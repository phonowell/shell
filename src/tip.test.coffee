# @ts-check
import '../scripts/head.ahk'

import $tip from '../dist/tip'

# Test 1: Basic functionality - tip should return the input value unchanged (identity function)
message = 'hello world'
result = $tip message
unless result == message then throw new Error "Expected '#{message}', got '#{result}'"

# 退出测试用例
import $exit from '../dist/exit'
$exit()