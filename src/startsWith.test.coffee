# @ts-check
import '../scripts/head.ahk'

import $startsWith from '../dist/startsWith'

# Test 1: Basic functionality - str starts with given prefix
str = 'string'

result = $startsWith str, 's'
unless result then throw new Error "Test 1: Expected 'string' to start with 's'"

# Test 2: Basic functionality - str does not start with given prefix
result = $startsWith str, 't'
if result then throw new Error "Test 2: Expected 'string' to NOT start with 't'"

# Test 3: Multi-character prefix that matches
result = $startsWith str, 'str'
unless result then throw new Error "Test 3: Expected 'string' to start with 'str'"

# Test 4: Multi-character prefix that doesn't match
result = $startsWith str, 'ing'
if result then throw new Error "Test 4: Expected 'string' to NOT start with 'ing'"

# Test 5: Edge case - empty prefix (should return true)
result = $startsWith str, ''
unless result then throw new Error "Test 5: Expected 'string' to start with empty str"

# Test 6: Edge case - prefix longer than str
result = $startsWith str, 'stringlong'
if result
  throw new Error "Test 6: Expected 'string' to NOT start with longer prefix 'stringlong'"

# Test 7: Edge case - empty str with empty prefix
result = $startsWith '', ''
unless result then throw new Error "Test 7: Expected empty str to start with empty prefix"

# Test 8: Edge case - empty str with non-empty prefix
result = $startsWith '', 'a'
if result then throw new Error "Test 8: Expected empty str to NOT start with 'a'"

# 退出测试用例
import $exit from '../dist/exit'
$exit()