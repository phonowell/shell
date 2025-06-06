# @ts-check

import $join from '../dist/join'

# Test default separator (comma)
list = [1, 2, 3, 4, 5]
result = $join list
unless result == '1,2,3,4,5'
  throw new Error 'Expected [1,2,3,4,5] to join with comma as "1,2,3,4,5"'

# Test custom separator (empty string)
result = $join list, ''
unless result == '12345'
  throw new Error 'Expected [1,2,3,4,5] to join with empty string as "12345"'

# Test custom separator (space)
result = $join list, ' '
unless result == '1 2 3 4 5'
  throw new Error 'Expected [1,2,3,4,5] to join with space as "1 2 3 4 5"'

# Test empty array
result = $join []
unless result == ''
  throw new Error 'Expected empty array to join as empty string'

# Test single element array
result = $join [42]
unless result == '42'
  throw new Error 'Expected [42] to join as "42"'