# @ts-check
import '../scripts/head.ahk'

import $at from '../dist/at'

# Test 1: Array access with positive index
do ->
  list = [1, 2, 3]
  result = $at list, 1
  unless result == 2
    throw new Error "Array positive index failed: expected 2, got #{result}"

# Test 2: Array access with negative index
do ->
  list = [1, 2, 3]
  result = $at list, -1
  unless result == 3
    throw new Error "Array negative index failed: expected 3, got #{result}"

# Test 3: Array access with index 0
do ->
  list = [1, 2, 3]
  result = $at list, 0
  unless result == 1
    throw new Error "Array index 0 failed: expected 1, got #{result}"

# Test 4: Array access with negative index -2
do ->
  list = [1, 2, 3]
  result = $at list, -2
  unless result == 2
    throw new Error "Array index -2 failed: expected 2, got #{result}"

# Test 5: Object access with dot notation
do ->
  obj = { a: { b: 1 } }
  result = $at obj, 'a.b'
  unless result == 1
    throw new Error "Object dot notation failed: expected 1, got #{result}"

# Test 6: Object access with multiple path arguments
do ->
  obj = { a: { b: 1 } }
  result = $at obj, 'a', 'b'
  unless result == 1
    throw new Error "Object multiple paths failed: expected 1, got #{result}"

# Test 7: Object access with single key
do ->
  obj = { a: 1 }
  result = $at obj, 'a'
  unless result == 1
    throw new Error "Object single key failed: expected 1, got #{result}"

# Test 8: Object access with deep nesting
do ->
  obj = { a: { b: { c: { d: 42 } } } }
  result = $at obj, 'a.b.c.d'
  unless result == 42
    throw new Error "Object deep nesting failed: expected 42, got #{result}"

# Test 9: Object access with non-existent path
do ->
  obj = { a: 1 }
  result = $at obj, 'b'
  unless result == undefined
    throw new Error "Non-existent path failed: expected undefined, got #{result}"

# Test 10: Object access with non-existent deep path
do ->
  obj = { a: 1 }
  result = $at obj, 'a.b.c'
  unless result == undefined
    throw new Error "Non-existent deep path failed: expected undefined, got #{result}"

import $exit from '../dist/exit'
$exit()
