# @ts-check

import $sort from '../src/sort'

# Test 4: Sort strings
strings = ['banana', 'apple', 'cherry', 'date']
sortedStrings = $sort strings

unless sortedStrings[0] == 'apple' and sortedStrings[3] == 'date'
  throw new Error "Expected alphabetical order, got [#{sortedStrings}]"

# Test 6: Edge case - empty array
###* @type string[] ###
emptyList = []
emptySorted = $sort emptyList

unless emptySorted.length == 0
  throw new Error "Expected empty array, got length #{emptySorted.length}"

