# @ts-check

import $push from '../dist/push'

# Test 1: Basic functionality - push single element
list = [0]
newLength = $push list, 1
unless newLength == 2 then throw new Error 'Should return new length'
unless list[1] == 1 then throw new Error 'Should add element at correct index'

# Test 2: Push multiple elements at once
result = $push list, 2, 3, 4
unless result == 5 then throw new Error 'Should return correct length after multiple push'
unless list[2] == 2 and
    list[3] == 3 and
    list[4] == 4
  throw new Error 'Should add all elements in order'

# Test 3: Push to empty array
###* @type string[] ###
emptyList = []
length = $push emptyList, 'first'
unless length == 1 then throw new Error 'Should handle empty array'
unless emptyList[0] == 'first' then throw new Error 'Should add element to empty array'

# Test 4: Push with no elements (edge case)
originalList = [1, 2]
originalLength = originalList.length
noChangeLength = $push originalList
unless noChangeLength == originalLength
  throw new Error 'Should return same length when no elements added'