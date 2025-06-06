# @ts-check

import $isFunction from '../src/isFunction'

# Test with imported function
result = $isFunction $isFunction
unless result then throw new Error 'Expected imported function to be identified as function'

# Test with regular function
testFn = -> 'test'
result = $isFunction testFn
unless result then throw new Error 'Expected regular function to be identified as function'

# Test with arrow function
arrowFn = -> 'arrow'
result = $isFunction arrowFn
unless result then throw new Error 'Expected arrow function to be identified as function'

# Test non-function values
result = $isFunction 'string'
if result then throw new Error 'Expected string to not be identified as function'

result = $isFunction 42
if result then throw new Error 'Expected number to not be identified as function'

result = $isFunction []
if result then throw new Error 'Expected array to not be identified as function'

result = $isFunction null
if result then throw new Error 'Expected null to not be identified as function'