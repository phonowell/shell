# @ts-check
import '../scripts/head.ahk'

import $take from '../dist/take'

# Test 1: Basic functionality - take first N elements
list = [1, 2, 3, 4, 5]
result = $take list, 3

unless result.Length() == 3 then throw new Error "Expected length 3, got #{result.length}"
unless result[0] == 1 and result[1] == 2 and result[2] == 3 then throw new Error "Expected [1,2,3], got [#{result}]"

# Test 2: Original array should not be modified (immutable operation)
unless list.Length() == 5 then throw new Error "Original array length changed, got #{list.length}"
unless list[0] == 1 and list[4] == 5 then throw new Error "Original array was modified, got [#{list}]"

# Test 3: Take more elements than available
takeMore = $take list, 10

unless takeMore.Length() == 5 then throw new Error "Expected length 5 (all elements), got #{takeMore.length}"
unless takeMore[0] == 1 and takeMore[4] == 5 then throw new Error "Expected [1,2,3,4,5], got [#{takeMore}]"

# Test 4: Edge case - take zero elements
takeZero = $take list, 0

unless takeZero.Length() == 0 then throw new Error "Expected empty array, got length #{takeZero.length}"

# Test 5: Edge case - take from empty array
###* @type unknown[] ###
emptyList = []
emptyResult = $take emptyList, 3

unless emptyResult.Length() == 0 then throw new Error "Expected empty array, got length #{emptyResult.length}"

# Test 6: Take single element
takeSingle = $take list, 1

unless takeSingle.Length() == 1 then throw new Error "Expected length 1, got #{takeSingle.length}"
unless takeSingle[0] == 1 then throw new Error "Expected [1], got [#{takeSingle}]"

# Test 7: Edge case - negative count (should return empty array)
takeNegative = $take list, -2

unless takeNegative.Length() == 0 then throw new Error "Expected empty array for negative count, got length #{takeNegative.length}"

# 退出测试用例
import $exit from '../dist/exit'
$exit()