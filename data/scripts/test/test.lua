require "test.lunatest"

local test_failed

function lunatest.is_test_key(k)
   return type(k) == "string" and k:match("^_*test")
end

local time_limit = 0
function set_time_limit(ms)
    time_limit = math.max(time_limit, ms)
end

local function clearerror(err)
    if type(err) == 'table' then
        return err:tostring(debug.traceback(coroutine.running()))
    end
    return err
end

function wraperror(fun)
    return function()
        
        ok, err = xpcall(fun, clearerror)
        if not ok then
            print(tostring(err))
            test_failed = true
        end
    end
end

require('test.suite')

local only_run_tests = getGlobalValue('ONLY_RUN_TESTS') == 'TRUE'

local test_origin = {x=100, y=115, z=7}
function get_free_tile()
    local o = test_origin
    test_origin.x = test_origin.x + 1
    return {x=o.x, y=o.y, z=o.z}
end

local delayed_assertion_count = 0
local DelayedAssertion = {}
function DelayedAssertion:assert_once()
    if ok then
        test_failed = true
        error('delayed assertion called too many times')
    else
        ok = true
        delayed_assertion_count = delayed_assertion_count - 1
    end
end

function delayed_assertion()
    delayed_assertion_count = delayed_assertion_count + 1
    return setmetatable({ok=false}, {__index=DelayedAssertion})
end

local function run_all()
    test_failed = false
    lunatest.run()
    wait(time_limit)
    if delayed_assertion_count > 0 then
        print('FAIL: there are unfinished delayed assertions')
        test_failed = true
    end
    if test_failed then
        os.exit(1)
    end
end

local TestCmd = Command:new("Test")
TestCmd.words = "/test"
TestCmd.groups = {"Gamemaster", "Senior Gamemaster", "Community Manager", "Server Administrator"}
function TestCmd.handler(event)
    run_all()
end
TestCmd:register()

if only_run_tests then
    registerOnServerLoad(function()
        run_all()
        setGameState(GAME_STATE_SHUTDOWN)
    end)
end
