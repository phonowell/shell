# @ts-check

import $uniq from '../src/uniq'

# Test 7: String array with duplicates
strings = ['a', 'b', 'a', 'c', 'b']
stringResult = $uniq strings
unless stringResult.length == 3 then throw new Error "Expected length 3, got #{stringResult.length}"
unless stringResult[0] == 'a' and stringResult[1] == 'b' and stringResult[2] == 'c' then throw new Error "Expected ['a','b','c'], got [#{stringResult}]"
