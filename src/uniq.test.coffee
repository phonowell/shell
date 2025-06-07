# @ts-check
import '../scripts/head.ahk'

import $join from '../dist/join'
import $uniq from '../dist/uniq'

# Test 7: String array with duplicates
strings = ['a', 'b', 'a', 'c', 'b']
result = $join $uniq strings
unless result == 'a,b,c' then throw new Error "Test 7: Expected 'a,b,c', got '#{result}'"

# 退出测试用例
import $exit from '../dist/exit'
$exit()