# @ts-check
import '../scripts/head.ahk'

import $unshift from '../dist/unshift'

# Test 1: Basic functionality - unshift single element to array
list = [0]

returnedLength = $unshift list, 1
unless list[0] == 1 then throw new Error "Expected first element to be 1, got #{list[0]}"
unless list[1] == 0 then throw new Error "Expected second element to be 0, got #{list[1]}"
unless returnedLength == 2 then throw new Error "Expected returned length to be 2, got #{returnedLength}"

# Test 2: Unshift multiple elements at once
len = $unshift list, 2, 3, 4
unless len == 5 then throw new Error "Expected length 5, got #{len}"
unless list[0] == 2 then throw new Error "Expected first element to be 2, got #{list[0]}"
unless list[1] == 3 then throw new Error "Expected second element to be 3, got #{list[1]}"
unless list[2] == 4 then throw new Error "Expected third element to be 4, got #{list[2]}"
unless list[3] == 1 then throw new Error "Expected fourth element to be 1, got #{list[3]}"

# Test 3: Edge case - unshift to empty array
###* @type string[] ###
emptyList = []
emptyLength = $unshift emptyList, 'first'
unless emptyLength == 1 then throw new Error "Expected length 1 for empty array, got #{emptyLength}"
unless emptyList[0] == 'first' then throw new Error "Expected 'first', got #{emptyList[0]}"

# Test 4: Unshift different data types
###* @type (string | number | boolean | null)[] ###
mixedList = [1]
mixedLength = $unshift mixedList, 'string', true, null
unless mixedLength == 4 then throw new Error "Expected length 4, got #{mixedLength}"
unless mixedList[0] == 'string' then throw new Error "Expected 'string' at index 0, got #{mixedList[0]}"
unless mixedList[1] == true then throw new Error "Expected true at index 1, got #{mixedList[1]}"
unless mixedList[2] == null then throw new Error "Expected null at index 2, got #{mixedList[2]}"
unless mixedList[3] == 1 then throw new Error "Expected 1 at index 3, got #{mixedList[3]}"

# 退出测试用例
import $exit from '../dist/exit'
$exit()