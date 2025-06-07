# @ts-check
import '../scripts/head.ahk'

import $join from '../dist/join'
import $map from '../dist/map'

# Basic functionality test - most important
# Test basic mapping with transformation function
list = [1, 2, 3]
result = $join $map list, (n) -> n + 1
unless result == '2,3,4'
  throw new Error "Basic map test failed: expected '2,3,4', got '#{result}'"

# Edge case tests
# Test with empty array
emptyResult = $map [], (n) -> n + 1
unless Array.isArray(emptyResult) and emptyResult.Length() == 0
  throw new Error "Empty array test failed"

# Test with different transformation functions
stringResult = $map [1, 2, 3], (n) -> "item#{n}"
expected = ['item1', 'item2', 'item3']
unless $join(stringResult) == $join(expected)
  throw new Error "String transformation test failed"

# Test with single element
singleResult = $map [5], (n) -> n * 2
unless singleResult.Length() == 1 and singleResult[0] == 10
  throw new Error "Single element test failed"

# 退出测试用例
import $exit from '../dist/exit'
$exit()