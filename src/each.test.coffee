# @ts-check

import $each from '../dist/each'

# Test 1: Basic iteration with index and value
do ->
  list = [1, 2, 3, 4]
  ###* @type string[] ###
  result = []

  $each list, (value, index) -> result.push "#{index}:#{value}"

  # Should iterate through all elements with correct index and value
  unless result.length == 4 and
      result[0] == '0:1' and
      result[1] == '1:2' and
      result[2] == '2:3' and
      result[3] == '3:4'
    throw new Error "Basic each failed: expected ['0:1', '1:2', '2:3', '3:4'], got #{result}"

# Test 2: Modifying external array during iteration
do ->
  list = [1, 2, 3]
  ###* @type number[] ###
  doubled = []

  $each list, (value, index) -> doubled[index] = value * 2

  # Should access all elements and modify external array
  unless doubled.length == 3 and doubled[0] == 2 and doubled[1] == 4 and doubled[2] == 6
    throw new Error "External modification failed: expected [2, 4, 6], got #{doubled}"

# Test 3: Empty array iteration
do ->
  callCount = 0
  $each [], -> callCount++

  # Should not call callback for empty array
  unless callCount == 0
    throw new Error "Empty array iteration failed: callback called #{callCount} times"