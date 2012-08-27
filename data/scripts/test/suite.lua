
function test_on_dead()
    local m, t
    set_time_limit(3000)
    
    m = createMonster('wolf', get_free_tile())
    t = m:getParentTile()
    local res = registerOnDeath('all', 'all',
        wraperror(function(event)
            local corpse = t:getThing(-1)

            assert_equal('dead wolf', corpse:getName())
            assert_equal(0, corpse:size())
            assert_equal(5, corpse:capacity())
    end))
    m:setHealth(0)
end


function test_traceback()
    assert_equal(debug.traceback, stacktrace)
    local tr = debug.traceback
    local cor = coroutine.running()
    tr()
    tr(cor)
    local msg = 'msg12949392'
    assert_match(msg, tr(msg, 3))
    assert_match(msg, tr(msg))
    assert_match(msg, tr(cor, msg))
    assert_match(msg, tr(cor, msg, 2))
end
