
function test_on_dead()
    local m, t
    set_time_limit(3000)
    
    m = createMonster('wolf', get_free_tile())
    t = m:getParentTile()
    local res = registerOnDeath('all', 'all',
        wraperror(function(event)
            local corpse = t:getThing(-1)
            print(t:getX())

            assert_equal('dead wolf', corpse:getName())
            assert_equal(0, corpse:size())
            assert_equal(5, corpse:capacity())
    end))
    m:setHealth(0)
end

function test_traceback()
    skip('will fail')
    debug.traceback(coroutine.running())
    local msg = 'msg12949392'
    assert_match(msg, debug.traceback(msg, 3))
end
