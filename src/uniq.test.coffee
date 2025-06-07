# @ts-check
import '../scripts/head.ahk'

import $uniq from '../dist/uniq'
import $toString from '../dist/toString'

# Test 7: String array with duplicates
strings = ['a', 'b', 'a', 'c', 'b']
stringResult = $uniq strings
unless stringResult.Length() == 3
  throw new Error "Expected length 3, got #{stringResult.length}"
unless stringResult[0] == 'a' and
    stringResult[1] == 'b' and
    stringResult[2] == 'c'
  throw new Error "Expected ['a','b','c'], got [#{$toString stringResult}]"

# 退出测试用例
import $exit from '../dist/exit'
$exit()