# @ts-check

import $compact from '../dist/compact'

# Test 1: Basic falsy value removal (core functionality)
do ->
  list = [0, 1, false, true, '', 'x']
  result = $compact list

  # Should keep only truthy values: [1, true, 'x']
  unless result.length == 3 and result[0] == 1 and result[1] == true and result[2] == 'x'
    throw new Error "Basic compact failed: expected [1, true, 'x'], got #{result}"

# Test 2: All falsy values
do ->
  list = [0, false, '', null, undefined]
  result = $compact list

  # Should return empty array
  unless result.length == 0
    throw new Error "All falsy compact failed: expected [], got #{result}"

# Test 3: All truthy values
do ->
  list = [1, 'hello', true, {}, []]
  result = $compact list

  # Should keep all values
  unless result.length == 5
    throw new Error "All truthy compact failed: expected length 5, got #{result.length}"