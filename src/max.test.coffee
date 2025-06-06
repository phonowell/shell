# @ts-check

import $isFunction from '../src/isFunction'
import $max from '../src/max'

# Test function existence
unless $isFunction $max
  throw new Error '$.max is not a function'

# Test basic functionality with positive numbers
result = $max [1, 2, 3]
unless result == 3
  throw new Error 'max([1, 2, 3]) should return 3'

# Test with negative numbers
result = $max [-1, -5, -2]
unless result == -1
  throw new Error 'max([-1, -5, -2]) should return -1'

# Test with single element
result = $max [42]
unless result == 42
  throw new Error 'max([42]) should return 42'

# Test with mixed positive and negative
result = $max [-1, 0, 1]
unless result == 1
  throw new Error 'max([-1, 0, 1]) should return 1'
