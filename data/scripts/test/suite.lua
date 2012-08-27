
function test_creature()
    local m, t
    set_time_limit(3000)
    local pos = get_free_tile();
    m = createMonster('wolf', pos)
    
    local function posEquals(p1, p2)
        return p1.x == p2.x and p1.y == p2.y and p1.z == p2.z
    end
    -- thing
    assert_equal(pos.x, m:getX(), 'x')
    assert_equal(pos.y, m:getY(), 'y')
    assert_equal(pos.z, m:getZ(), 'z')
    assert_true(posEquals(pos, m:getPosition()), 'pos')
    assert_not_nil(m:getParentTile(), 'tilepos')
    assert_true(posEquals(pos, m:getParentTile():getPosition()), 'tilepos')
    assert_true(posEquals(pos, m:getParent():getPosition()), 'parent')
    assert_equal(true, m:isMoveable(), 'moveable')
    assert_equal('Wolf', m:getName(), 'name')
    assert_equal('a wolf.', m:getDescription(), 'desc')
    
    -- creature
    assert_nil(m:getMaster(), 'master')
    assert_equal(25, m:getHealthMax(), 'healthmax')
    assert_equal(25, m:getHealth(), 'health')
    assert_not_nil(m:getID(), 'id')
    assert_equal(NORTH, m:getOrientation(), 'orientation')
    assert_not_nil(m:getOutfit(), 'outfit')
    assert_not_nil(m:getZone(), 'zone')
    assert_equal(195, m:getSpeed(), 'speed')
    assert_equal(195, m:getBaseSpeed(), 'basespeed')
    assert_equal(1, m:getArmor(), 'armor')
    assert_equal(4, m:getDefense(), 'defense')
    assert_equal(true, m:isPushable(), 'pushable')
    assert_nil(m:getTarget(), 'target')
    assert_true(posEquals({x=0, y=0, z=0}, m:getMasterPos()), 'masterpos')
    assert_equal(0, #m:getMechanicImmunities(), 'mechanicimmunities')
    assert_equal(0, #m:getDamageImmunities(), 'damageimmunities')
    
    -- actor
    assert_equal(false, m:getShouldReload(), 'shouldreload')
    assert_equal(false, m:getAlwaysThink(), 'shouldalwaysthink')
    assert_equal(false, m:getOnlyThink(), 'onlythink')
    assert_equal(true, m:getCanTarget(), 'cantarget')
    assert_equal(18, m:getExperienceWorth(), 'experienceworth')
    assert_equal(false, m:getCanPushItems(), 'canpushitems')
    assert_equal(false, m:getCanPushCreatures(), 'canpushcreatures')
    assert_equal(1, m:getTargetDistance(), 'targetdistance')
    assert_equal(0, m:getMaxSummons(), 'maxsummons')
    assert_equal(90, m:getStaticAttackChance(), 'staticattacj')
    assert_equal(8, m:getFleeHealth(), 'fleehealth')
    assert_equal(5968, m:getCorpseId(), 'corpseid')
    assert_equal(RACE_BLOOD, m:getRace(), 'race')
    assert_equal(true, m:isSummonable(), 'issummonable')
    assert_equal(true, m:isConvinceable(), 'isconvincable')
    assert_equal(true, m:isIllusionable(), 'isillusionable')
    assert_equal(true, m:getCanBeAttacked(), 'canbeattacked')
    assert_equal(false, m:getCanBeLured(), 'canbelured')
    assert_equal(0, m:getLightLevel(), 'lightlevel')
    assert_equal(0, m:getLightColor(), 'loghtcolor')
    assert_equal(255, m:getManaCost(), 'manacost')
    
    t = m:getParentTile()
    local a = delayed_assertion()
    local res = registerOnDeath('all', 'all',
        wraperror(function(event)
            local corpse = t:getThing(-1)

            assert_equal('dead wolf', corpse:getName())
            assert_equal(0, corpse:size())
            assert_equal(5, corpse:capacity())
            a:assert_once()
    end))
    m:setHealth(0)
end

function test_enums()
    assert_number(NORTH:value())
    assert_equal('Direction', NORTH:type())
    assert_equal('WEST', WEST:name())
    
    assert_equal('RACE_BLOOD', RACE_BLOOD:name())
    assert_equal('RACE_BLOOD', RACE_BLOOD:name(1))
    assert_equal('blood', RACE_BLOOD:name(2))
    
    assert_not_equal(NORTH, SOUTH)
    
    assert_number(SKILL_CLUB:value())
    assert_number(SKILL_SWORD:value())
    assert_not_equal(SKILL_CLUB:value(), SKILL_SWORD:value())
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
