# @ts-check
import '../scripts/head.ahk'

import $tail from '../dist/tail'

# Test 1: Basic functionality - tail of array with multiple elements
list = [1, 2, 3, 4, 5]
result = $tail list

unless result.length == 4 then throw new Error "Expected length 4, got #{result.length}"
unless result[0] == 2 and result[1] == 3 and result[3] == 5 then throw new Error "Expected [2,3,4,5], got [#{result}]"

# Test 2: Original array should not be modified (immutable operation)
unless list.length == 5 then throw new Error "Original array length changed, got #{list.length}"
unless list[0] == 1 and list[4] == 5 then throw new Error "Original array was modified, got [#{list}]"

# Test 3: Edge case - single element array
singleList = [42]
singleResult = $tail singleList

unless singleResult.length == 0 then throw new Error "Expected empty array for single element, got length #{singleResult.length}"

# Test 4: Edge case - empty array
###* @type unknown[] ###
emptyList = []
emptyResult = $tail emptyList

unless emptyResult.length == 0 then throw new Error "Expected empty array, got length #{emptyResult.length}"

# Test 5: Two element array
twoElements = ['a', 'b']
twoResult = $tail twoElements

unless twoResult.length == 1 then throw new Error "Expected length 1, got #{twoResult.length}"
unless twoResult[0] == 'b' then throw new Error "Expected ['b'], got [#{twoResult}]"

# Test 6: Array with mixed types
mixed = [1, 'hello', true, null]
mixedResult = $tail mixed

unless mixedResult.length == 3 then throw new Error "Expected length 3, got #{mixedResult.length}"
unless mixedResult[0] == 'hello' and mixedResult[2] == null then throw new Error "Expected ['hello', true, null], got [#{mixedResult}]"
