
function test_assert()
   assert_true(true)
end

function test_assert2()
   assert_false(false)
end

function test_skip()
   skip("(reason why this test was skipped)")
end
