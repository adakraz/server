require "test.lunatest"

require 'test.suite'
lunatest.suite('test.corpse')

local only_run_tests = getGlobalValue('ONLY_RUN_TESTS') == 'TRUE'

test_origin = {x=100, y=115, z=7}

local hooks = {}
function hooks.pre_test()
    -- HACK: terrible hack to wait for all events to fire 
    wait(2000)
end
local function run_all()
    lunatest.run(hooks)
end

local Test = Command:new("Test")
Test.words = "/test"
Test.groups = {"Gamemaster", "Senior Gamemaster", "Community Manager", "Server Administrator"}
function Test.handler(event)
	run_all()
end
Test:register()

if only_run_tests then
    registerOnServerLoad(function()
        run_all()
        setGameState(GAME_STATE_SHUTDOWN)
    end)
end
