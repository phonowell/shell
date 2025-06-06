# @ts-check

import $toLower from '../src/toLower'

# Test 1: Basic functionality - convert uppercase string to lowercase
upper = 'HELLO'
result = $toLower upper
unless result == 'hello' then throw new Error "Expected 'hello', got '#{result}'"

# Test 2: Mixed case string
mixed = 'Hello World'
mixedResult = $toLower mixed
unless mixedResult == 'hello world' then throw new Error "Expected 'hello world', got '#{mixedResult}'"

# Test 3: String already in lowercase (should remain unchanged)
lower = 'already lowercase'
lowerResult = $toLower lower
unless lowerResult == 'already lowercase' then throw new Error "Expected 'already lowercase', got '#{lowerResult}'"

# Test 4: String with numbers and symbols (should remain unchanged)
withNumbers = 'Test123!@#'
numbersResult = $toLower withNumbers
unless numbersResult == 'test123!@#' then throw new Error "Expected 'test123!@#', got '#{numbersResult}'"

# Test 5: Edge case - empty string
empty = ''
emptyResult = $toLower empty
unless emptyResult == '' then throw new Error "Expected empty string, got '#{emptyResult}'"

# Test 6: Single character tests
singleUpper = $toLower 'A'
unless singleUpper == 'a' then throw new Error "Expected 'a', got '#{singleUpper}'"

singleLower = $toLower 'z'
unless singleLower == 'z' then throw new Error "Expected 'z', got '#{singleLower}'"

# Test 7: String with spaces only
spaces = '   '
spacesResult = $toLower spaces
unless spacesResult == '   ' then throw new Error "Expected '   ', got '#{spacesResult}'"
