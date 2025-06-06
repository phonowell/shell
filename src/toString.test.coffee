# @ts-check

import $toString from '../src/toString'

# Test 1: Basic functionality - string input should return as-is
unless ($toString 'a') == 'a'
  throw new Error "Expected 'a', got '#{$toString 'a'}'"

# Test 2: Basic functionality - number to string conversion
unless ($toString 1) == '1'
  throw new Error "Expected '1', got '#{$toString 1}'"

# Test 3: Boolean conversions
unless ($toString true) == 'true'
  throw new Error "Expected 'true', got '#{$toString true}'"

unless ($toString false) == 'false'
  throw new Error "Expected 'false', got '#{$toString false}'"

# Test 4: Simple array conversion
unless ($toString [1, 2, 3]) == '[1, 2, 3]'
  throw new Error "Expected '[1, 2, 3]', got '#{$toString [1, 2, 3]}'"

# Test 5: Nested array conversion
unless ($toString [1, 2, [3, 4, 5]]) == '[1, 2, [3, 4, 5]]'
  throw new Error "Expected '[1, 2, [3, 4, 5]]', got '#{$toString [1, 2, [3, 4, 5]]}'"

# Test 6: Simple object conversion
unless ($toString {a: 1}) == '{a: 1}'
  throw new Error "Expected '{a: 1}', got '#{$toString {a: 1}}'"

# Test 7: Nested object conversion
unless ($toString {a: 1, b: {c: 3}}) == '{a: 1, b: {c: 3}}'
  throw new Error "Expected '{a: 1, b: {c: 3}}', got '#{$toString {a: 1, b: {c: 3}}}'"

# Test 9: Edge case - empty array and object
unless ($toString []) == '[]'
  throw new Error "Expected '[]', got '#{$toString []}'"

unless ($toString {}) == '{}'
  throw new Error "Expected '{}', got '#{$toString {}}'"

