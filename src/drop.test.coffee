# @ts-check

import $drop from '../src/drop'

list = [1, 2, 3, 4, 5]

# Test 1: Default drop (drops first element)
listA = $drop list
# Should drop first element: [2, 3, 4, 5]
unless listA.length == 4 and listA[0] == 2 and listA[1] == 3 and listA[2] == 4 and listA[3] == 5
  throw new Error "Default drop failed: expected [2, 3, 4, 5], got #{listA}"

# Test 2: Drop specific count
listB = $drop list, 3
# Should drop first 3 elements: [4, 5]
unless listB.length == 2 and listB[0] == 4 and listB[1] == 5
  throw new Error "Drop 3 elements failed: expected [4, 5], got #{listB}"

# Test 3: Drop more than array length (edge case)
listC = $drop list, 10
# Should return empty array
unless listC.length == 0
  throw new Error "Drop more than length failed: expected [], got #{listC}"

# Test 4: Drop zero elements
listD = $drop list, 0
# Should return original array (or copy)
unless listD.length == 5 and listD[0] == 1
  throw new Error "Drop 0 elements failed: expected original array, got #{listD}"