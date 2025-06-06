# @ts-check

import $length from '../src/length'

# Test basic array length
do ->
  list = [1, 2, 3]
  n = $length list
  unless n == 3
    throw new Error 'Array length test failed'

# Test basic string length
do ->
  string = 'wow'
  n = $length string
  unless n == 3
    throw new Error 'String length test failed'

# Test basic object property count
do ->
  map = {
    a: 1
    b: 2
    c: 3
  }
  n = $length map
  unless n == 3
    throw new Error 'Object length test failed'