# @ts-check
import '../scripts/head.ahk'

import $isObject from '../dist/isObject'

# Test basic object
m = { a: 1 }
result = $isObject m
unless result then throw new Error 'Expected {a: 1} to be identified as object'

# Test empty object
# result = $isObject {}
# unless result then throw new Error 'Expected {} to be identified as object'

# Test array
result = $isObject [1, 2, 3]
if result then throw new Error 'Expected array to not be identified as object'

# Test function
result = $isObject -> 'test'
if result then throw new Error 'Expected function to not be identified as object'

# Test non-object values
result = $isObject 'string'
if result then throw new Error 'Expected string to not be identified as object'

result = $isObject 42
if result then throw new Error 'Expected number to not be identified as object'

result = $isObject true
if result then throw new Error 'Expected boolean to not be identified as object'

result = $isObject null
if result then throw new Error 'Expected null to not be identified as object'

result = $isObject undefined
if result then throw new Error 'Expected undefined to not be identified as object'

# 退出测试用例
import $exit from '../dist/exit'
$exit()