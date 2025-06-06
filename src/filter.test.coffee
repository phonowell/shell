# @ts-check
import '../scripts/head.ahk'

import $filter from '../dist/filter'

# Test 1: Basic filtering (exclude specific value)
do ->
  list = [1, 2, 3]
  result = $filter list, (it) -> it != 2

  # Should keep elements 1 and 3: [1, 3]
  unless result.Length() == 2 and result[0] == 1 and result[1] == 3
    throw new Error "Basic filter failed: expected [1, 3], got #{result}"

# Test 2: Filter with index parameter
do ->
  list = [10, 20, 30, 40]
  result = $filter list, (_value, index) -> index % 2 == 0

  # Should keep elements at even indices: [10, 30]
  unless result.Length() == 2 and result[0] == 10 and result[1] == 30
    throw new Error "Index-based filter failed: expected [10, 30], got #{result}"

# Test 3: Filter returning all elements
do ->
  list = [1, 2, 3]
  result = $filter list, -> true

  # Should keep all elements
  unless result.Length() == 3 and result[0] == 1 and result[1] == 2 and result[2] == 3
    throw new Error "Filter all failed: expected [1, 2, 3], got #{result}"

# Test 4: Filter returning no elements
do ->
  list = [1, 2, 3]
  result = $filter list, -> false

  # Should return empty array
  unless result.Length() == 0
    throw new Error "Filter none failed: expected [], got #{result}"