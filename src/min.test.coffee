# @ts-check

import $isFunction from '../src/isFunction'
import $min from '../src/min'

# Test function existence
unless $isFunction $min
  throw new Error '$.min is not a function'

# Test basic functionality with positive numbers
result = $min [1, 2, 3]
unless result == 1
  throw new Error 'min([1, 2, 3]) should return 1'

# Test with negative numbers
result = $min [-1, -5, -2]
unless result == -5
  throw new Error 'min([-1, -5, -2]) should return -5'

# Test with single element
result = $min [42]
unless result == 42
  throw new Error 'min([42]) should return 42'

# Test with mixed positive and negative
result = $min [-1, 0, 1]
unless result == -1
  throw new Error 'min([-1, 0, 1]) should return -1'