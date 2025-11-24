# @ts-check
import '../scripts/head.ahk'

import $length from '../dist/length'

# Test basic array length
do ->
  list = [1, 2, 3]
  n = $length list
  unless n == 3
    throw new Error 'Array length test failed'

# Test basic string length
do ->
  str = 'wow'
  n = $length str
  unless n == 3
    throw new Error 'String length test failed'

# Test basic object property count
do ->
  m = {
    a: 1
    b: 2
    c: 3
  }
  n = $length m
  unless n == 3
    throw new Error 'Object length test failed'

# 退出测试用例
import $exit from '../dist/exit'
$exit()