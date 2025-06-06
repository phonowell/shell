# @ts-check

import $concat from '../dist/concat'

# Test 1: Basic array concatenation
do ->
  result = $concat [1, 2], [3, 4]

  # Should merge arrays: [1, 2, 3, 4]
  unless result.length == 4 and
      result[0] == 1 and
      result[1] == 2 and
      result[2] == 3 and
      result[3] == 4
    throw new Error "Basic concat failed: expected [1, 2, 3, 4], got #{result}"

# Test 2: Mixed arrays and individual values (complex case)
do ->
  result = $concat [1, 2, 3], 4, 5, [6, 7], 8, [9]

  # Should flatten to: [1, 2, 3, 4, 5, 6, 7, 8, 9]
  expected = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  unless result.length == 9
    throw new Error "Mixed concat failed: wrong length #{result.length}"
  for i in [0...9]
    unless result[i] == expected[i]
      throw new Error "Mixed concat failed at index #{i}: expected #{expected[i]}, got #{result[i]}"

# Test 3: Empty arrays and single values
do ->
  result = $concat [], 1, [], 2, []

  # Should result in: [1, 2]
  unless result.length == 2 and result[0] == 1 and result[1] == 2
    throw new Error "Empty arrays concat failed: expected [1, 2], got #{result}"