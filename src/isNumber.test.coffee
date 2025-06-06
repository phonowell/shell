# @ts-check

import $isNumber from '../dist/isNumber'

# Test positive integer
result = $isNumber 1
unless result then throw new Error 'Expected 1 to be identified as number'

# Test zero
result = $isNumber 0
unless result then throw new Error 'Expected 0 to be identified as number'

# Test negative number
result = $isNumber -5
unless result then throw new Error 'Expected -5 to be identified as number'

# Test float
result = $isNumber 3.14
unless result then throw new Error 'Expected 3.14 to be identified as number'

# Test non-number values
result = $isNumber '42'
if result then throw new Error 'Expected string "42" to not be identified as number'

result = $isNumber true
if result then throw new Error 'Expected boolean to not be identified as number'

result = $isNumber []
if result then throw new Error 'Expected array to not be identified as number'

result = $isNumber null
if result then throw new Error 'Expected null to not be identified as number'