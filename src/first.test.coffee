# @ts-check
import '../scripts/head.ahk'

import $first from '../dist/first'

# Test 1: Basic first element retrieval
do ->
  list = [1, 2, 3]
  result = $first list

  # Should return the first element
  unless result == 1
    throw new Error "Basic first failed: expected 1, got #{result}"

# Test 2: Single element array
do ->
  list = [42]
  result = $first list

  # Should return the only element
  unless result == 42
    throw new Error "Single element first failed: expected 42, got #{result}"

# Test 3: Empty array (edge case)
do ->
  ###* @type unknown[] ###
  list = []
  result = $first list

  # Should return undefined for empty array
  unless result == undefined
    throw new Error "Empty array first failed: expected undefined, got #{result}"