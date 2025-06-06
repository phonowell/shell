# @ts-check
import '../scripts/head.ahk'

import $toLowerCase from '../dist/toLowerCase'

# Test 1: Basic functionality - convert uppercase string to lowercase
upper = 'HELLO'
result = $toLowerCase upper
unless result == 'hello' then throw new Error "Expected 'hello', got '#{result}'"

# Test 2: Mixed case string
mixed = 'Hello World'
mixedResult = $toLowerCase mixed
unless mixedResult == 'hello world' then throw new Error "Expected 'hello world', got '#{mixedResult}'"

# Test 3: String already in lowercase (should remain unchanged)
lower = 'already lowercase'
lowerResult = $toLowerCase lower
unless lowerResult == 'already lowercase' then throw new Error "Expected 'already lowercase', got '#{lowerResult}'"

# Test 4: String with numbers and symbols (should remain unchanged)
withNumbers = 'Test123!@#'
numbersResult = $toLowerCase withNumbers
unless numbersResult == 'test123!@#' then throw new Error "Expected 'test123!@#', got '#{numbersResult}'"

# Test 5: Edge case - empty string
empty = ''
emptyResult = $toLowerCase empty
unless emptyResult == '' then throw new Error "Expected empty string, got '#{emptyResult}'"

# Test 6: Single character tests
singleUpper = $toLowerCase 'A'
unless singleUpper == 'a' then throw new Error "Expected 'a', got '#{singleUpper}'"

singleLower = $toLowerCase 'z'
unless singleLower == 'z' then throw new Error "Expected 'z', got '#{singleLower}'"

# Test 7: String with spaces only
spaces = '   '
spacesResult = $toLowerCase spaces
unless spacesResult == '   ' then throw new Error "Expected '   ', got '#{spacesResult}'"
