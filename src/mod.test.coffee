# @ts-check
import '../scripts/head.ahk'

import $mod from '../dist/mod'

# Test basic modulo: 5 % 2 = 1
n = $mod 5, 2
unless n == 1
  throw new Error 'Expected 5 % 2 to equal 1'

# Test basic modulo: 7 % 5 = 2
n = $mod 7, 5
unless n == 2
  throw new Error 'Expected 7 % 5 to equal 2'

# Test zero remainder: 6 % 3 = 0
n = $mod 6, 3
unless n == 0
  throw new Error 'Expected 6 % 3 to equal 0'

# Test modulo with negative numbers: -5 % 3
n = $mod -5, 3
unless n == 1 or n == -2  # Handle different implementations
  throw new Error 'Expected -5 % 3 to follow consistent modulo behavior'

# 退出测试用例
import $exit from '../dist/exit'
$exit()