# @ts-check

import $toUpper from '../dist/toUpper'

# Test 1: Basic functionality - convert lowercase string to uppercase
lower = 'hello'
result = $toUpper lower
unless result == 'HELLO' then throw new Error "Expected 'HELLO', got '#{result}'"

# Test 2: Mixed case string
mixed = 'Hello World'
mixedResult = $toUpper mixed
unless mixedResult == 'HELLO WORLD' then throw new Error "Expected 'HELLO WORLD', got '#{mixedResult}'"

# Test 3: String already in uppercase (should remain unchanged)
upper = 'ALREADY UPPERCASE'
upperResult = $toUpper upper
unless upperResult == 'ALREADY UPPERCASE' then throw new Error "Expected 'ALREADY UPPERCASE', got '#{upperResult}'"

# Test 4: String with numbers and symbols (should remain unchanged)
withNumbers = 'test123!@#'
numbersResult = $toUpper withNumbers
unless numbersResult == 'TEST123!@#' then throw new Error "Expected 'TEST123!@#', got '#{numbersResult}'"

# Test 5: Edge case - empty string
empty = ''
emptyResult = $toUpper empty
unless emptyResult == '' then throw new Error "Expected empty string, got '#{emptyResult}'"

# Test 6: Single character tests
singleLower = $toUpper 'a'
unless singleLower == 'A' then throw new Error "Expected 'A', got '#{singleLower}'"

singleUpper = $toUpper 'Z'
unless singleUpper == 'Z' then throw new Error "Expected 'Z', got '#{singleUpper}'"

# Test 7: String with spaces only
spaces = '   '
spacesResult = $toUpper spaces
unless spacesResult == '   ' then throw new Error "Expected '   ', got '#{spacesResult}'"
