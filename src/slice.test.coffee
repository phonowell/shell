# @ts-check

import $slice from '../dist/slice'

# Test 1: Basic functionality - slice with start and end indices
list = [0, 1, 2, 3, 4]
sliced = $slice list, 1, 3

# Should return elements from index 1 to 3 (exclusive)
unless sliced.length == 2 then throw new Error "Expected length 2, got #{sliced.length}"
unless sliced[0] == 1 and sliced[1] == 2 then throw new Error "Expected [1,2], got [#{sliced}]"

# Test 2: Original array should not be modified
unless list.length == 5 then throw new Error "Original array length changed, got #{list.length}"
unless list[0] == 0 and list[4] == 4 then throw new Error "Original array was modified"

# Test 3: Slice with only start index (to end of array)
startOnly = $slice list, 2

unless startOnly.length == 3 then throw new Error "Expected length 3, got #{startOnly.length}"
unless startOnly[0] == 2 and startOnly[2] == 4
  throw new Error "Expected [2,3,4], got [#{startOnly}]"

# Test 4: Slice with negative indices
negativeSlice = $slice list, -3, -1

unless negativeSlice.length == 2
  throw new Error "Expected length 2, got #{negativeSlice.length}"
unless negativeSlice[0] == 2 and negativeSlice[1] == 3
  throw new Error "Expected [2,3], got [#{negativeSlice}]"

# Test 5: Edge case - empty array
###* @type unknown[] ###
emptyList = []
emptySliced = $slice emptyList, 0, 1

unless emptySliced.length == 0
  throw new Error "Expected empty array, got length #{emptySliced.length}"

# Test 6: Edge case - out of bounds indices
outOfBounds = $slice list, 10, 20

unless outOfBounds.length == 0
  throw new Error "Expected empty array for out of bounds, got length #{outOfBounds.length}"

# Test 7: Edge case - start index greater than end index
invalidRange = $slice list, 3, 1

unless invalidRange.length == 0
  throw new Error "Expected empty array for invalid range, got length #{invalidRange.length}"
