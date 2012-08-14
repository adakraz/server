

function test_dead()
    local m, t
    set_time_limit(3000)
    
    m = createMonster('wolf', test_origin)
    t = m:getParentTile()
    local res = registerOnDeath('all', 'all',
        function(event)
            local corpse = t:getThing(-1)

            assert_equal('dead wolf', corpse:getName())
            assert_equal(0, corpse:size())
            assert_equal(5, corpse:capacity())
    end)
    m:setHealth(0)
end
