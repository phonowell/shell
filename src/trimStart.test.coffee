# @ts-check

import $trimStart from '../dist/trimStart'

# Test 1: Basic functionality - trim leading spaces only
leading = '  hello'
result = $trimStart leading
unless result == 'hello' then throw new Error "Expected 'hello', got '#{result}'"

# Test 2: String with trailing spaces (should preserve trailing whitespace)
trailing = 'hello  '
trailingResult = $trimStart trailing
unless trailingResult == 'hello  ' then throw new Error "Expected 'hello  ', got '#{trailingResult}'"

# Test 3: String with both leading and trailing spaces (should only trim start)
both = '  hello world  '
bothResult = $trimStart both
unless bothResult == 'hello world  ' then throw new Error "Expected 'hello world  ', got '#{bothResult}'"

# Test 4: String with no whitespace (should remain unchanged)
noSpaces = 'hello'
noSpacesResult = $trimStart noSpaces
unless noSpacesResult == 'hello' then throw new Error "Expected 'hello', got '#{noSpacesResult}'"

# Test 5: String with internal spaces (should preserve all internal whitespace)
internal = '  hello world'
internalResult = $trimStart internal
unless internalResult == 'hello world' then throw new Error "Expected 'hello world', got '#{internalResult}'"

# Test 6: Edge case - string with only leading whitespace
onlyLeading = '   '
onlyLeadingResult = $trimStart onlyLeading
unless onlyLeadingResult == '' then throw new Error "Expected empty string, got '#{onlyLeadingResult}'"

# Test 7: Edge case - empty string
empty = ''
emptyResult = $trimStart empty
unless emptyResult == '' then throw new Error "Expected empty string, got '#{emptyResult}'"

# Test 8: Different types of leading whitespace (tabs, newlines)
mixedWhitespace = '\t\n  hello'
mixedResult = $trimStart mixedWhitespace
unless mixedResult == 'hello' then throw new Error "Expected 'hello', got '#{mixedResult}'"
