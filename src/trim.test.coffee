# @ts-check
import '../scripts/head.ahk'

import $trim from '../dist/trim'

# Test 1: Basic functionality - trim spaces from both ends
spaced = '  hello world  '
result = $trim spaced
unless result == 'hello world'
  throw new Error "Test 1: Expected 'hello world', got '#{result}'"

# Test 2: Trim leading spaces only
leading = '  hello'
leadingResult = $trim leading
unless leadingResult == 'hello'
  throw new Error "Test 2: Expected 'hello', got '#{leadingResult}'"

# Test 3: Trim trailing spaces only
trailing = 'hello  '
trailingResult = $trim trailing
unless trailingResult == 'hello'
  throw new Error "Test 3: Expected 'hello', got '#{trailingResult}'"

# Test 4: String with no whitespace (should remain unchanged)
noSpaces = 'hello'
noSpacesResult = $trim noSpaces
unless noSpacesResult == 'hello'
  throw new Error "Test 4: Expected 'hello', got '#{noSpacesResult}'"

# Test 5: String with internal spaces (should preserve internal whitespace)
internal = '  hello world  '
internalResult = $trim internal
unless internalResult == 'hello world'
  throw new Error "Test 5: Expected 'hello world', got '#{internalResult}'"

# Test 6: Edge case - string with only whitespace
onlySpaces = '   '
onlySpacesResult = $trim onlySpaces
unless onlySpacesResult == ''
  throw new Error "Test 6: Expected empty string, got '#{onlySpacesResult}'"

# Test 7: Edge case - empty string
empty = ''
emptyResult = $trim empty
unless emptyResult == '' then throw new Error "Test 7: Expected empty string, got '#{emptyResult}'"

# Test 8: Different types of whitespace (tabs, newlines)
mixedWhitespace = '\t\r\n  hello  \r\n\t'
mixedResult = $trim mixedWhitespace
unless mixedResult == 'hello' then throw new Error "Test 8: Expected 'hello', got '#{mixedResult}'"

# 退出测试用例
import $exit from '../dist/exit'
$exit()