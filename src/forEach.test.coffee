# @ts-check
import '../scripts/head.ahk'

import $forEach from '../dist/forEach'
import $join from '../dist/join'
import $toString from '../dist/toString'

# Test 1: Basic iteration with side effects
do ->
  list = [1, 2, 3]
  sum = {
    value: 0
  }

  $forEach list, (value) -> sum.value += value

  # Should iterate through all elements and accumulate sum
  unless sum.value == 6
    throw new Error "Basic forEach failed: expected sum 6, got #{sum.value}"

# Test 2: Iteration with index parameter
do ->
  list = [1, 2, 3, 4]
  ###* @type string[] ###
  result = []

  $forEach list, (value, index) -> result.Push "#{index}:#{value}"
  resultString = $join result, '|'

  # Should iterate through all elements with correct index and value
  unless result.Length() == 4 and resultString == '0:1|1:2|2:3|3:4'
    throw new Error "Test 1: Basic each failed: expected ['0:1', '1:2', '2:3', '3:4'], got #{$toString result}"

# Test 3: Empty array iteration
do ->
  callCount = 0
  $forEach [], -> callCount++

  # Should not call callback for empty array
  unless callCount == 0
    throw new Error "Empty array forEach failed: callback called #{callCount} times"

# Test 4: Single element array
do ->
  result = {
    value: 0
  }
  $forEach [42], (value) -> result.value = value * 2

  # Should process single element correctly
  unless result.value == 84
    throw new Error "Single element forEach failed: expected 84, got #{result.value}"

# 退出测试用例
import $exit from '../dist/exit'
$exit()