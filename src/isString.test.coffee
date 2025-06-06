# @ts-check

import $isString from '../dist/isString'

# Test basic string
result = $isString 'aloha'
unless result then throw new Error 'Expected "aloha" to be identified as string'

# Test empty string
result = $isString ''
unless result then throw new Error 'Expected empty string to be identified as string'

# Test string with numbers
result = $isString '123'
unless result then throw new Error 'Expected "123" to be identified as string'

# Test non-string values
result = $isString 42
if result then throw new Error 'Expected number to not be identified as string'

result = $isString true
if result then throw new Error 'Expected boolean to not be identified as string'

result = $isString []
if result then throw new Error 'Expected array to not be identified as string'

result = $isString {}
if result then throw new Error 'Expected object to not be identified as string'

result = $isString null
if result then throw new Error 'Expected null to not be identified as string'