# @ts-check

import $values from '../src/values'
import $includes from '../src/includes'

# Test 1: Basic functionality - extract values from simple object
obj = {a: 1, b: 2, c: 3}
result = $values obj
unless result.length == 3 then throw new Error "Expected length 3, got #{result.length}"
unless $includes result, 1 and
    $includes result, 2 and
    $includes result, 3
  throw new Error "Expected [1,2,3] in any order, got [#{result}]"

# Test 2: Object with mixed value types
mixed = {str: 'hello', num: 42, bool: true, nil: null}
mixedResult = $values mixed
unless mixedResult.length == 4 then throw new Error "Expected length 4, got #{mixedResult.length}"
unless 'hello' in mixedResult and 42 in mixedResult and true in mixedResult and null in mixedResult then throw new Error "Expected mixed types, got [#{mixedResult}]"

# Test 3: Object with nested objects as values
nested = {a: {x: 1}, b: {y: 2}}
nestedResult = $values nested
unless nestedResult.length == 2 then throw new Error "Expected length 2, got #{nestedResult.length}"

# Test 4: Array input (should return array values by index)
arr = ['a', 'b', 'c']
arrResult = $values arr
unless arrResult.length == 3 then throw new Error "Expected length 3, got #{arrResult.length}"
unless 'a' in arrResult and 'b' in arrResult and 'c' in arrResult then throw new Error "Expected ['a','b','c'], got [#{arrResult}]"

# Test 5: Edge case - empty object
empty = {}
emptyResult = $values empty
unless emptyResult.length == 0 then throw new Error "Expected empty array, got length #{emptyResult.length}"

# Test 6: Edge case - empty array
###* @type unknown[] ###
emptyArr = []
emptyArrResult = $values emptyArr
unless emptyArrResult.length == 0 then throw new Error "Expected empty array, got length #{emptyArrResult.length}"

