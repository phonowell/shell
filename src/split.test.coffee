# @ts-check

import $split from '../dist/split'

# Test 1: Basic functionality - split string with delimiter
result = $split 'a,b,c', ','

unless result.length == 3 then throw new Error "Expected 3 parts, got #{result.length}"
unless result[0] == 'a' and result[1] == 'b' and result[2] == 'c' then throw new Error "Expected ['a','b','c'], got [#{result}]"

# Test 2: String without delimiter - should return single element array
singleResult = $split 'test', ','

unless singleResult.length == 1 then throw new Error "Expected 1 part, got #{singleResult.length}"
unless singleResult[0] == 'test' then throw new Error "Expected ['test'], got [#{singleResult}]"

# Test 3: Edge case - empty string
emptyResult = $split '', ','

unless emptyResult.length == 1 then throw new Error "Expected 1 part for empty string, got #{emptyResult.length}"
unless emptyResult[0] == '' then throw new Error "Expected [''], got [#{emptyResult}]"

# Test 4: Multiple consecutive delimiters
multiResult = $split 'a,,b', ','

unless multiResult.length == 3 then throw new Error "Expected 3 parts with empty middle, got #{multiResult.length}"
unless multiResult[0] == 'a' and multiResult[1] == '' and multiResult[2] == 'b' then throw new Error "Expected ['a','','b'], got [#{multiResult}]"

# Test 5: Different delimiter
spaceResult = $split 'hello world test', ' '

unless spaceResult.length == 3 then throw new Error "Expected 3 words, got #{spaceResult.length}"
unless spaceResult[0] == 'hello' and spaceResult[2] == 'test' then throw new Error "Expected ['hello','world','test'], got [#{spaceResult}]"