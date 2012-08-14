module(..., package.seeall)

local m, t
function suite_setup()
   m = createMonster('wolf', test_origin)
   t = m:getParentTile()
   m:setHealth(0)
end

function test_dead()
   local corpse = t:getThing(-1)
   print(corpse)
   assert_equal('dead wolf', corpse:getName())
   assert_equal(0, corpse:size())
   assert_equal(5, corpse:capacity())
end
