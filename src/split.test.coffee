# @ts-check
import '../scripts/head.ahk'

import $split from '../dist/split'

# Test 1: Basic functionality - split string with delimiter
result = $split 'a,b,c', ','

unless result.Length() == 3 then throw new Error "Test 1a: Expected 3 parts, got #{result.Length()}"
unless result[0] == 'a' and result[1] == 'b' and result[2] == 'c' then throw new Error "Test 1b: Expected ['a','b','c'], got [#{result}]"

# Test 2: String without delimiter - should return single element array
singleResult = $split 'test', ','

unless singleResult.Length() == 1 then throw new Error "Test 2a: Expected 1 part, got #{singleResult.Length()}"
unless singleResult[0] == 'test' then throw new Error "Test 2b: Expected ['test'], got [#{singleResult}]"

# # Test 3: Edge case - empty string
# emptyResult = $split '', ','

# unless emptyResult.Length() == 1 then throw new Error "Test 3a: Expected 1 part for empty string, got #{emptyResult.Length()}"
# unless emptyResult[0] == '' then throw new Error "Test 3b: Expected [''], got [#{emptyResult}]"

# Test 4: Multiple consecutive delimiters
multiResult = $split 'a,,b', ','

unless multiResult.Length() == 3 then throw new Error "Test 4a: Expected 3 parts with empty middle, got #{multiResult.Length()}"
unless multiResult[0] == 'a' and multiResult[1] == '' and multiResult[2] == 'b' then throw new Error "Test 4b: Expected ['a','','b'], got [#{multiResult}]"

# Test 5: Different delimiter
spaceResult = $split 'hello world test', ' '

unless spaceResult.Length() == 3 then throw new Error "Test 5a: Expected 3 words, got #{spaceResult.Length()}"
unless spaceResult[0] == 'hello' and spaceResult[2] == 'test' then throw new Error "Test 5b: Expected ['hello','world','test'], got [#{spaceResult}]"

# 退出测试用例
import $exit from '../dist/exit'
$exit()