# @ts-check
import '../scripts/head.ahk'

import $range from '../dist/range'

do ->
  # Test 1: Basic functionality - simple range
  result = $range 0, 3
  unless Array.isArray(result) then throw new Error 'Should return an array'
  unless result.Length() == 3 then throw new Error 'Should have correct length'
  unless result[0] == 0 and
      result[1] == 1 and
      result[2] == 2
    throw new Error 'Should generate correct sequence'

  # Test 2: Range with step parameter
  stepped = $range 0, 10, 2
  unless stepped.Length() == 5 then throw new Error 'Should handle step parameter'
  unless stepped[0] == 0 and
      stepped[1] == 2 and
      stepped[4] == 8
    throw new Error 'Should use step correctly'

do ->
  # Test 3: Single parameter (0 to n)
  simple = $range 5
  unless simple.Length() == 5 then throw new Error 'Should handle single parameter'
  unless simple[0] == 0 and simple[4] == 4 then throw new Error 'Should start from 0'

  # Test 4: Empty range
  empty = $range 0, 0
  unless empty.Length() == 0 then throw new Error 'Should return empty array for equal start/end'

  # Test 5: Negative numbers
  negative = $range -2, 2
  unless negative.Length() == 4 then throw new Error 'Should handle negative start'
  unless negative[0] == -2 and negative[3] == 1
    throw new Error 'Should generate negative to positive range'
