# @ts-check
import '../scripts/head.ahk'

import $subString from '../dist/subString'

str = 'string'

# Test 1: Basic functionality - substring from start index to end
result = $subString str, 0
unless result == str then throw new Error "Test 1: Expected '#{str}', got '#{result}'"

# Test 2: Basic functionality - substring from middle to end
result = $subString str, 1
unless result == 'tring' then throw new Error "Test 2: Expected 'tring', got '#{result}'"

# Test 3: Basic functionality - substring with start and end indices
result = $subString str, 1, 2
unless result == 't' then throw new Error "Test 3a: Expected 't', got '#{result}'"

result = $subString str, 3, 5
unless result == 'in' then throw new Error "Test 3b: Expected 'in', got '#{result}'"

# Test 4: Edge case - start and end at same position
result = $subString str, 2, 2
unless result == '' then throw new Error "Test 4: Expected empty str, got '#{result}'"

# Test 5: Edge case - out of bounds end index
result = $subString str, 2, 100
unless result == 'ring' then throw new Error "Test 5: Expected 'ring', got '#{result}'"

# Test 6: Edge case - negative start index
result = $subString str, -1
unless result == 'g' then throw new Error "Test 6: Expected 'g', got '#{result}'"

# Test 7: Edge case - start index greater than end index
result = $subString str, 4, 2
unless result == 'ri' then throw new Error "Test 7: Expected 'rin', got '#{result}'"

# Test 8: Edge case - empty str
emptyResult = $subString '', 0
unless emptyResult == '' then throw new Error "Test 8: Expected empty str, got '#{emptyResult}'"

# 退出测试用例
import $exit from '../dist/exit'
$exit()