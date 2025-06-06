# @ts-check
import '../scripts/head.ahk'

import $getType from '../dist/getType'

# Test 1: Primitive types (most common)
do ->
  # Number type
  type = $getType 42
  unless type == 'number'
    throw new Error "Number type failed: expected 'number', got '#{type}'"

do ->
  # String type
  type = $getType 'hello'
  unless type == 'string'
    throw new Error "String type failed: expected 'string', got '#{type}'"

# Test 2: Function type
do ->
  type = $getType $getType
  unless type == 'function'
    throw new Error "Function type failed: expected 'function', got '#{type}'"

# Test 3: Array type (distinguishes from object)
do ->
  type = $getType [1, 2, 3]
  unless type == 'array'
    throw new Error "Array type failed: expected 'array', got '#{type}'"

# Test 4: Object type
do ->
  type = $getType { a: 1, b: 2, c: 3 }
  unless type == 'object'
    throw new Error "Object type failed: expected 'object', got '#{type}'"
