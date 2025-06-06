# @ts-check

import $delete from '../dist/delete'

# Test 1: Single property deletion (basic functionality)
do ->
  obj = {
    a: 1
    b: 2
  }
  $delete obj, 'a'

  # Property 'a' should be deleted, 'b' should remain
  unless obj.a == undefined and obj.b == 2
    throw new Error "Single property deletion failed: a=#{obj.a}, b=#{obj.b}"

# Test 2: Multiple property deletion
do ->
  obj = {
    a: 1
    b: 2
    c: 3
  }
  $delete obj, 'a', 'b'

  # Properties 'a' and 'b' should be deleted, 'c' should remain
  unless obj.a == undefined and obj.b == undefined and obj.c == 3
    throw new Error "Multiple property deletion failed: a=#{obj.a}, b=#{obj.b}, c=#{obj.c}"

# Test 3: Deleting non-existent property (edge case)
do ->
  obj = { a: 1 }
  $delete obj, 'nonexistent'

  # Should not throw error, original property should remain
  unless obj.a == 1
    throw new Error "Deleting non-existent property affected existing properties"