# @ts-check
import '../scripts/head.ahk'

import $eq from '../dist/eq'

# Test 1: Primitive values (numbers)
do ->
  # Equal numbers should return true
  unless $eq 1, 1
    throw new Error "EQ001: Equal numbers failed"

  # Different numbers should return false
  if $eq 1, 2
    throw new Error "EQ002: Different numbers should not be equal"

# Test 2: String comparison
do ->
  # Equal strings should return true
  unless $eq 'hello', 'hello'
    throw new Error "EQ003: Equal strings failed"

  # Different strings should return false
  if $eq 'hello', 'aloha'
    throw new Error "EQ004: Different strings should not be equal"

# Test 3: Array deep comparison
do ->
  # Arrays with same content should be equal
  unless $eq [1, 2], [1, 2]
    throw new Error "EQ005: Equal arrays failed"

  # Arrays with different content should not be equal
  if $eq [1, 2], [1, 2, 3]
    throw new Error "EQ006: Different arrays should not be equal"

# Test 4: Object deep comparison
do ->
  # Objects with same properties should be equal
  unless $eq { a: 1, b: 2 }, { a: 1, b: 2 }
    throw new Error "EQ007: Equal objects failed"

  # Objects with different properties should not be equal
  if $eq { a: 1, b: 2 }, { a: 1, b: 2, c: 3 }
    throw new Error "EQ008: Different objects should not be equal"

# 退出测试用例
import $exit from '../dist/exit'
$exit()