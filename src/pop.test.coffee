# @ts-check

import $pop from '../dist/pop'

# Test 1: Basic functionality - pop from non-empty array
list = [0, 1, 2]
last = $pop list
unless last == 2 then throw new Error 'Should return last element'
unless list.length == 2 then throw new Error 'Should remove last element'
unless list[0] == 0 and list[1] == 1 then throw new Error 'Should preserve other elements'

# Test 2: Single element array
singleList = [42]
result = $pop singleList
unless result == 42 then throw new Error 'Should return single element'
unless singleList.length == 0 then throw new Error 'Should result in empty array'

# Test 3: Empty array edge case
###* @type unknown[] ###
emptyList = []
emptyResult = $pop emptyList
unless emptyResult == undefined then throw new Error 'Should return undefined for empty array'
unless emptyList.length == 0 then throw new Error 'Should remain empty'