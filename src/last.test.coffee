# @ts-check
import '../scripts/head.ahk'

import $last from '../dist/last'

# Test basic functionality - get last element of array
list = [1, 2, 3]
item = $last list
unless item == 3
  throw new Error 'Expected last([1,2,3]) to return 3'

# Test single element array
item = $last [42]
unless item == 42
  throw new Error 'Expected last([42]) to return 42'

# Test empty array - should return undefined
item = $last []
unless item is undefined
  throw new Error 'Expected last([]) to return undefined'
