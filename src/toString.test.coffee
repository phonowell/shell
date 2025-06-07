# @ts-check
import '../scripts/head.ahk'

import $toString from '../dist/toString'

# Test 1: Basic functionality - string input should return as-is
unless ($toString 'a') == 'a'
  throw new Error "Test 1: Expected 'a', got '#{$toString 'a'}'"

# Test 2: Basic functionality - number to string conversion
unless ($toString 1) == '1'
  throw new Error "Test 2: Expected '1', got '#{$toString 1}'"

# Test 3: Boolean conversions
unless ($toString true) == '1'
  throw new Error "Test 3a: Expected '1', got '#{$toString true}'"

unless ($toString false) == '0'
  throw new Error "Test 3b: Expected '0', got '#{$toString false}'"

# Test 4: Simple array conversion
unless ($toString [1, 2, 3]) == '[1, 2, 3]'
  throw new Error "Test 4: Expected '[1, 2, 3]', got '#{$toString [1, 2, 3]}'"

# # Test 5: Nested array conversion
# unless ($toString [1, 2, [3, 4, 5]]) == '[1, 2, [3, 4, 5]]'
#   throw new Error "Test 5: Expected '[1, 2, [3, 4, 5]]', got '#{$toString [1, 2, [3, 4, 5]]}'"

# Test 6: Simple object conversion
unless ($toString { a: 1 }) == '{a: 1}'
  throw new Error "Test 6: Expected '{a: 1}', got '#{$toString { a: 1 }}'"

# # Test 7: Nested object conversion
# unless ($toString { a: 1, b: { c: 3 } }) == '{a: 1, b: {c: 3}}'
#   throw new Error "Test 7: Expected '{a: 1, b: {c: 3}}', got '#{$toString { a: 1, b: { c: 3 } }}'"

# Test 9: Edge case - empty array and object
unless ($toString []) == '[]'
  throw new Error "Test 9a: Expected '[]', got '#{$toString []}'"

# unless ($toString {}) == '{}'
#   throw new Error "Test 9b: Expected '{}', got '#{$toString {}}'"

# 退出测试用例
import $exit from '../dist/exit'
$exit()