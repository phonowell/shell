# @ts-check
import '../scripts/head.ahk'

import $each from '../dist/each'
import $join from '../dist/join'
import $toString from '../dist/toString'

# Test 1: Basic iteration with index and value
do ->
  list = [1, 2, 3, 4]
  ###* @type string[] ###
  result = []

  $each list, (value, index) -> result.Push "#{index}:#{value}"
  resultString = $join result, '|'

  # Should iterate through all elements with correct index and value
  unless result.Length() == 4 and resultString == '0:1|1:2|2:3|3:4'
    throw new Error "Test 1: Basic each failed: expected ['0:1', '1:2', '2:3', '3:4'], got #{$toString result}"

# Test 2: Modifying external array during iteration
do ->
  list = [1, 2, 3]
  ###* @type number[] ###
  doubled = []

  $each list, (value, index) -> doubled[index] = value * 2

  # Should access all elements and modify external array
  unless doubled.Length() == 3 and doubled[0] == 2 and doubled[1] == 4 and doubled[2] == 6
    throw new Error "Test 2: External modification failed: expected [2, 4, 6], got #{doubled}"

# Test 3: Empty array iteration
do ->
  callCount = 0
  $each [], -> callCount++

  # Should not call callback for empty array
  unless callCount == 0
    throw new Error "Test 3: Empty array iteration failed: callback called #{callCount} times"

# 退出测试用例
import $exit from '../dist/exit'
$exit()