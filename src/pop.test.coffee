# @ts-check
import '../scripts/head.ahk'

import $join from '../dist/join'
import $pop from '../dist/pop'

# Test 1: Basic functionality - pop from non-empty array
list = [0, 1, 2]
last = $pop list
unless last == 2 then throw new Error 'POP001: Should return last element'
unless list.Length() == 2 then throw new Error 'POP002: Should remove last element'
unless ($join list, ',') == '0,1' then throw new Error 'POP003: Should preserve other elements'

# Test 2: Single element array
singleList = [42]
result = $pop singleList
unless result == 42 then throw new Error 'POP004: Should return single element'
unless singleList.Length() == 0 then throw new Error 'POP005: Should result in empty array'

# Test 3: Empty array edge case
###* @type unknown[] ###
emptyList = []
emptyResult = $pop emptyList
if emptyResult then throw new Error 'POP006: Should return undefined for empty array'
unless emptyList.Length() == 0 then throw new Error 'POP007: Should remain empty'

# 退出测试用例
import $exit from '../dist/exit'
$exit()