# @ts-check
import '../scripts/head.ahk'

import $getPosition from '../dist/getPosition'
import $isFunction from '../dist/isFunction'
import $join from '../dist/join'
import $move from '../dist/move'

unless $isFunction $getPosition
  throw new Error 'getPosition should be a function'

$move [50, 100]
result = $join $getPosition()

unless result == '50,100'
  throw new Error "[Test 1] Expected '50,100', got '#{result}'"

# 退出测试用例
import $exit from '../dist/exit'
$exit()