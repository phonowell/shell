# @ts-check

import $isArray from '../dist/isArray'

# Test non-empty array
list = [1, 2, 3]
result = $isArray list
unless result then throw new Error 'Expected [1,2,3] to be identified as array'

# Test empty array
list = []
result = $isArray list
unless result then throw new Error 'Expected [] to be identified as array'

# Test non-array values
result = $isArray 'string'
if result then throw new Error 'Expected string to not be identified as array'

result = $isArray 42
if result then throw new Error 'Expected number to not be identified as array'

result = $isArray null
if result then throw new Error 'Expected null to not be identified as array'

result = $isArray undefined
if result then throw new Error 'Expected undefined to not be identified as array'