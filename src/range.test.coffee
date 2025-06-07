# @ts-check
import '../scripts/head.ahk'

import $join from '../dist/join'
import $range from '../dist/range'

# Test 1: Basic functionality - simple range
do ->
  result = $join $range 0, 3
  unless result == '0,1,2' then throw new Error "R001: Expected '0,1,2', got '#{result}"

# Test 2: Range with step parameter
do ->
  result = $join $range 0, 10, 2
  unless result == '0,2,4,6,8'
    throw new Error "R002: Expected '0,2,4,6,8', got '#{result}'"

do ->
  # Test 3: Single parameter (0 to n)
  simple = $range 5
  unless simple.Length() == 5 then throw new Error 'R006: Should handle single parameter'
  unless simple[0] == 0 and simple[4] == 4 then throw new Error 'R007: Should start from 0'

  # Test 4: Empty range
  empty = $range 0, 0
  unless empty.Length() == 0
    throw new Error 'R008: Should return empty array for equal start/end'

  # Test 5: Negative numbers
  negative = $range -2, 2
  unless negative.Length() == 4 then throw new Error 'R009: Should handle negative start'
  unless negative[0] == -2 and negative[3] == 1
    throw new Error 'R010: Should generate negative to positive range'

# 退出测试用例
import $exit from '../dist/exit'
$exit()