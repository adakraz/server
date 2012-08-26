require "test.lunatest"

local test_failed

function is_test_key(k)
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

local function run_all()
    test_failed = false
    lunatest.run()
    wait(time_limit)
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
