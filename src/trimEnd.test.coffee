# @ts-check
import '../scripts/head.ahk'

import $trimEnd from '../dist/trimEnd'

# Test 1: Basic functionality - trim trailing spaces only
trailing = 'hello  '
result = $trimEnd trailing
unless result == 'hello' then throw new Error "Expected 'hello', got '#{result}'"

# Test 2: String with leading spaces (should preserve leading whitespace)
leading = '  hello'
leadingResult = $trimEnd leading
unless leadingResult == '  hello' then throw new Error "Expected '  hello', got '#{leadingResult}'"

# Test 3: String with both leading and trailing spaces (should only trim end)
both = '  hello world  '
bothResult = $trimEnd both
unless bothResult == '  hello world' then throw new Error "Expected '  hello world', got '#{bothResult}'"

# Test 4: String with no whitespace (should remain unchanged)
noSpaces = 'hello'
noSpacesResult = $trimEnd noSpaces
unless noSpacesResult == 'hello' then throw new Error "Expected 'hello', got '#{noSpacesResult}'"

# Test 5: String with internal spaces (should preserve all internal whitespace)
internal = 'hello world  '
internalResult = $trimEnd internal
unless internalResult == 'hello world' then throw new Error "Expected 'hello world', got '#{internalResult}'"

# Test 6: Edge case - string with only trailing whitespace
onlyTrailing = '   '
onlyTrailingResult = $trimEnd onlyTrailing
unless onlyTrailingResult == '' then throw new Error "Expected empty string, got '#{onlyTrailingResult}'"

# Test 7: Edge case - empty string
empty = ''
emptyResult = $trimEnd empty
unless emptyResult == '' then throw new Error "Expected empty string, got '#{emptyResult}'"

# Test 8: Different types of trailing whitespace (tabs, newlines)
mixedWhitespace = 'hello\t\n  '
mixedResult = $trimEnd mixedWhitespace
unless mixedResult == 'hello' then throw new Error "Expected 'hello', got '#{mixedResult}'"
