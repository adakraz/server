require "test.lunatest"

local time_limit = 3000
function set_time_limit(ms)
    time_limit = ms
end


--require 'test.suite'
require('test.corpse')

local only_run_tests = getGlobalValue('ONLY_RUN_TESTS') == 'TRUE'

test_origin = {x=100, y=115, z=7}

local function run_all()
    lunatest.run()
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
        wait(time_limit)
        setGameState(GAME_STATE_SHUTDOWN)
    end)
end
