# @ts-check
import '../scripts/head.ahk'

import $join from '../dist/join'
import $sort from '../dist/sort'

# Test 4: Sort strings
strings = ['banana', 'apple', 'cherry', 'date']
sortedString = $join $sort strings

unless sortedString == 'apple,banana,cherry,date'
  throw new Error "Test 4: Expected 'apple,banana,cherry,date', got '#{sortedString}'"

# Test 6: Edge case - empty array
###* @type string[] ###
emptyList = []
emptySorted = $sort emptyList

unless emptySorted.Length() == 0
  throw new Error "Test 6: Expected empty array, got length #{emptySorted.length}"

# 退出测试用例
import $exit from '../dist/exit'
$exit()