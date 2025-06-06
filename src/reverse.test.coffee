# @ts-check

import $reverse from '../src/reverse'

# Test 1: Basic functionality - reverse array with multiple elements
list = [1, 2, 3, 4]
reversed = $reverse list

# Should return reversed array
unless reversed.length == 4 then throw new Error "Expected length 4, got #{reversed.length}"
unless reversed[0] == 4 and
    reversed[1] == 3 and
    reversed[2] == 2 and
    reversed[3] == 1
  throw new Error "Expected [4,3,2,1], got [#{reversed}]"

# Test 2: Original array should not be modified (immutable operation)
unless list[0] == 1 and list[1] == 2 and list[2] == 3 and list[3] == 4
  throw new Error "Original array was modified, got [#{list}]"

# Test 3: Edge case - single element array
singleList = [42]
singleReversed = $reverse singleList

unless singleReversed.length == 1
  throw new Error "Expected length 1, got #{singleReversed.length}"
unless singleReversed[0] == 42 then throw new Error "Expected [42], got [#{singleReversed}]"

# Test 4: Edge case - empty array
###* @type unknown[] ###
emptyList = []
emptyReversed = $reverse emptyList

unless emptyReversed.length == 0
  throw new Error "Expected empty array, got length #{emptyReversed.length}"

# Test 5: Array with duplicate elements
duplicateList = [1, 2, 2, 1]
duplicateReversed = $reverse duplicateList

unless duplicateReversed[0] == 1 and
    duplicateReversed[1] == 2 and
    duplicateReversed[2] == 2 and
    duplicateReversed[3] == 1
  throw new Error "Expected [1,2,2,1], got [#{duplicateReversed}]"
