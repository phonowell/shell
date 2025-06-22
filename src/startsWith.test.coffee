# @ts-check
import '../scripts/head.ahk'

import $startsWith from '../dist/startsWith'

# Test 1: Basic functionality - string starts with given prefix
string = 'string'

result = $startsWith string, 's'
unless result then throw new Error "Test 1: Expected 'string' to start with 's'"

# Test 2: Basic functionality - string does not start with given prefix
result = $startsWith string, 't'
if result then throw new Error "Test 2: Expected 'string' to NOT start with 't'"

# Test 3: Multi-character prefix that matches
result = $startsWith string, 'str'
unless result then throw new Error "Test 3: Expected 'string' to start with 'str'"

# Test 4: Multi-character prefix that doesn't match
result = $startsWith string, 'ing'
if result then throw new Error "Test 4: Expected 'string' to NOT start with 'ing'"

# Test 5: Edge case - empty prefix (should return true)
result = $startsWith string, ''
unless result then throw new Error "Test 5: Expected 'string' to start with empty string"

# Test 6: Edge case - prefix longer than string
result = $startsWith string, 'stringlong'
if result
  throw new Error "Test 6: Expected 'string' to NOT start with longer prefix 'stringlong'"

# Test 7: Edge case - empty string with empty prefix
result = $startsWith '', ''
unless result then throw new Error "Test 7: Expected empty string to start with empty prefix"

# Test 8: Edge case - empty string with non-empty prefix
result = $startsWith '', 'a'
if result then throw new Error "Test 8: Expected empty string to NOT start with 'a'"

# 退出测试用例
import $exit from '../dist/exit'
$exit()