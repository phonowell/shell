# @ts-check
import '../scripts/head.ahk'

import $math from '../dist/math'
import $sum from '../dist/sum'

# Test 1: Basic functionality - sum of positive numbers
numbers = [1, 2, 3, 4, 5]
result = $sum numbers

unless result == 15 then throw new Error "Expected 15, got #{result}"

# Test 2: Sum with negative numbers
mixedNumbers = [10, -5, 3, -2]
mixedResult = $sum mixedNumbers

unless mixedResult == 6 then throw new Error "Expected 6, got #{mixedResult}"

# Test 3: Sum with decimal numbers
decimals = [1.5, 2.3, 0.2]
decimalResult = $sum decimals

unless $math.abs(decimalResult - 4.0) < 0.0001 then throw new Error "Expected 4.0, got #{decimalResult}"

# Test 4: Edge case - single element array
single = [42]
singleResult = $sum single

unless singleResult == 42 then throw new Error "Expected 42, got #{singleResult}"

# Test 5: Edge case - empty array
###* @type number[] ###
empty = []
emptyResult = $sum empty

unless emptyResult == 0 then throw new Error "Expected 0 for empty array, got #{emptyResult}"

# Test 6: Array with zeros
withZeros = [0, 5, 0, 3, 0]
zerosResult = $sum withZeros

unless zerosResult == 8 then throw new Error "Expected 8, got #{zerosResult}"

# Test 7: All negative numbers
negatives = [-1, -2, -3]
negativesResult = $sum negatives

unless negativesResult == -6 then throw new Error "Expected -6, got #{negativesResult}"

# 退出测试用例
import $exit from '../dist/exit'
$exit()