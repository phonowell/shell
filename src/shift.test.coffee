# @ts-check

import $shift from '../dist/shift'

# Test 1: Basic functionality - shift from non-empty array
list = [0, 1, 2]
first = $shift list

# Should return the first element
unless first == 0 then throw new Error "Expected first element to be 0, got #{first}"

# Should modify the original array by removing first element
unless list.length == 2 then throw new Error "Expected array length to be 2, got #{list.length}"
unless list[0] == 1 and list[1] == 2
  throw new Error "Expected array to be [1, 2], got [#{list}]"

# Test 2: Edge case - shift from single element array
singleList = [42]
singleResult = $shift singleList

unless singleResult == 42
  throw new Error "Expected single element to be 42, got #{singleResult}"
unless singleList.length == 0
  throw new Error "Expected empty array after shift, got length #{singleList.length}"

# Test 3: Edge case - shift from empty array
###* @type unknown[] ###
emptyList = []
emptyResult = $shift emptyList

unless emptyResult == undefined
  throw new Error "Expected undefined from empty array, got #{emptyResult}"
unless emptyList.length == 0 then throw new Error "Expected array to remain empty"