# @ts-check

import $forEach from '../dist/forEach'

# Test 1: Basic iteration with side effects
do ->
  list = [1, 2, 3]
  sum = 0

  $forEach list, (value) -> sum += value

  # Should iterate through all elements and accumulate sum
  unless sum == 6
    throw new Error "Basic forEach failed: expected sum 6, got #{sum}"

# Test 2: Iteration with index parameter
do ->
  list = ['a', 'b', 'c']
  ###* @type string[] ###
  result = []

  $forEach list, (value, index) -> result.push "#{index}:#{value}"

  # Should provide both value and index to callback
  unless result.length == 3 and result[0] == '0:a' and result[1] == '1:b' and result[2] == '2:c'
    throw new Error "Index forEach failed: expected ['0:a', '1:b', '2:c'], got #{result}"

# Test 3: Empty array iteration
do ->
  callCount = 0
  $forEach [], -> callCount++

  # Should not call callback for empty array
  unless callCount == 0
    throw new Error "Empty array forEach failed: callback called #{callCount} times"

# Test 4: Single element array
do ->
  result = null
  $forEach [42], (value) -> result = value * 2

  # Should process single element correctly
  unless result == 84
    throw new Error "Single element forEach failed: expected 84, got #{result}"
