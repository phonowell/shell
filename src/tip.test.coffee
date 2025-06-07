# @ts-check
import '../scripts/head.ahk'

import $sleep from '../dist/sleep'
import $tip from '../dist/tip'

# Test 1: Basic functionality - tip should return the input value unchanged (identity function)
message = 'hello world'
result = $tip message
unless result == message
  throw new Error "Expected '#{message}', got '#{result}'"

$sleep()

# 退出测试用例
import $exit from '../dist/exit'
$exit()