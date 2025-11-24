# @ts-check
import '../scripts/head.ahk'

import $once from '../dist/once'

# Test basic once functionality - function executes only once
m = { n: 0 }
add = $once -> m.n += 1

# First call should execute
add()
unless m.n == 1 then throw new Error 'Expected function to execute on first call'

# Second call should not execute
add()
unless m.n == 1 then throw new Error 'Expected function to not execute on second call'

# Test return value is cached
getValue = $once -> 42

result1 = getValue()
result2 = getValue()

unless result1 == 42 and result2 == 42
  throw new Error 'Expected cached return value to be consistent'

# 退出测试用例
import $exit from '../dist/exit'
$exit()