# @ts-check
import '../scripts/head.ahk'

import $endsWith from '../dist/endsWith'

# Test 1: Basic functionality - string ends with given suffix
string = 'string'

result = $endsWith string, 'g'
unless result then throw new Error "Test 1: Expected 'string' to end with 'g'"

# Test 2: Basic functionality - string does not end with given suffix
result = $endsWith string, 's'
if result then throw new Error "Test 2: Expected 'string' to NOT end with 's'"

# Test 3: Multi-character suffix that matches
result = $endsWith string, 'ing'
unless result then throw new Error "Test 3: Expected 'string' to end with 'ing'"

# Test 4: Multi-character suffix that doesn't match
result = $endsWith string, 'str'
if result then throw new Error "Test 4: Expected 'string' to NOT end with 'str'"

# Test 5: Edge case - empty suffix (should return true)
result = $endsWith string, ''
unless result then throw new Error "Test 5: Expected 'string' to end with empty string"

# Test 6: Edge case - suffix longer than string
result = $endsWith string, 'stringlong'
if result
  throw new Error "Test 6: Expected 'string' to NOT end with longer suffix 'stringlong'"

# Test 7: Edge case - empty string with empty suffix
result = $endsWith '', ''
unless result then throw new Error "Test 7: Expected empty string to end with empty suffix"

# Test 8: Edge case - empty string with non-empty suffix
result = $endsWith '', 'a'
if result then throw new Error "Test 8: Expected empty string to NOT end with 'a'"

# 退出测试用例
import $exit from '../dist/exit'
$exit()
