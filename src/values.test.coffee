# @ts-check
import '../scripts/head.ahk'

import $join from '../dist/join'
import $values from '../dist/values'

# Test 1: Basic functionality - extract values from simple object
do ->
  obj = { a: 1, b: 2, c: 3 }
  result = $join ($values obj), ','
  unless result == '1,2,3' then throw new Error "Test 1: Expected '1,2,3', got '#{result}'"

# Test 2: Object with mixed value types
do ->
  obj = { str: 'hello', num: 42, bool: true, nil: null }
  result = $join ($values obj), ','
  unless result == '1,,42,hello'
    throw new Error "Test 2: Expected 'hello,42,true,', got '#{result}'"

# Test 3: Object with nested objects as values
# nested = {a: {x: 1}, b: {y: 2}}
# nestedResult = $values nested
# unless nestedResult.Length() == 2 then throw new Error "Test 3: Expected length 2, got #{nestedResult.length}"

# Test 5: Edge case - empty object
empty = {}
emptyResult = $values empty
unless emptyResult.Length() == 0 then throw new Error "Test 5: Expected empty array, got length #{emptyResult.length}"

# Test 6: Edge case - empty array
###* @type unknown[] ###
emptyArr = []
emptyArrResult = $values emptyArr
unless emptyArrResult.Length() == 0 then throw new Error "Test 6: Expected empty array, got length #{emptyArrResult.length}"

# 退出测试用例
import $exit from '../dist/exit'
$exit()