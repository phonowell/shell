# @ts-check

import $toNumber from '../dist/toNumber'

# Test 1: Basic functionality - convert numeric string to number
numString = '42'
result = $toNumber numString
unless result == 42 then throw new Error "Expected 42, got #{result}"

# Test 2: Convert decimal string to number
decimalString = '3.14'
decimalResult = $toNumber decimalString
unless Math.abs(decimalResult - 3.14) < 0.0001 then throw new Error "Expected 3.14, got #{decimalResult}"

# Test 3: Convert negative number string
negativeString = '-15'
negativeResult = $toNumber negativeString
unless negativeResult == -15 then throw new Error "Expected -15, got #{negativeResult}"

# Test 4: Number input should return as-is
number = 100
numberResult = $toNumber number
unless numberResult == 100 then throw new Error "Expected 100, got #{numberResult}"

# Test 5: Boolean conversions
trueResult = $toNumber true
unless trueResult == 1 then throw new Error "Expected 1 for true, got #{trueResult}"

falseResult = $toNumber false
unless falseResult == 0 then throw new Error "Expected 0 for false, got #{falseResult}"

# Test 6: Edge case - empty string
emptyResult = $toNumber ''
unless emptyResult == 0 then throw new Error "Expected 0 for empty string, got #{emptyResult}"

# Test 7: Edge case - invalid string
invalidResult = $toNumber 'abc'
unless isNaN(invalidResult) then throw new Error "Expected NaN for invalid string, got #{invalidResult}"

# Test 8: Edge case - null and undefined
nullResult = $toNumber null
unless nullResult == 0 then throw new Error "Expected 0 for null, got #{nullResult}"

undefinedResult = $toNumber undefined
unless isNaN(undefinedResult) then throw new Error "Expected NaN for undefined, got #{undefinedResult}"
