# @ts-check
import '../scripts/head.ahk'

import $getType from '../dist/getType'

# Test 1: Primitive types (most common)
do ->
  # Number type
  t = $getType 42
  unless t == 'number'
    throw new Error "Number type failed: expected 'number', got '#{t}'"

do ->
  # String type
  t = $getType 'hello'
  unless t == 'string'
    throw new Error "String type failed: expected 'string', got '#{t}'"

# Test 2: Function type
do ->
  t = $getType $getType
  unless t == 'function'
    throw new Error "Function type failed: expected 'function', got '#{t}'"

# Test 3: Array type (distinguishes from object)
do ->
  t = $getType [1, 2, 3]
  unless t == 'array'
    throw new Error "Array type failed: expected 'array', got '#{t}'"

# Test 4: Object type
do ->
  t = $getType { a: 1, b: 2, c: 3 }
  unless t == 'object'
    throw new Error "Object type failed: expected 'object', got '#{t}'"

# 退出测试用例
import $exit from '../dist/exit'
$exit()