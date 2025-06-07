# @ts-check
import '../scripts/head.ahk'

import $isFunction from '../dist/isFunction'
import $move from '../dist/move'
import $getPosition from '../dist/getPosition'

unless $isFunction $move
  throw new Error 'move should be a function'

$move [50, 100]
p = $getPosition()

unless p[0] == 50 and p[1] == 100
  throw new Error 'Expected position to be [50, 100] after move'

# 退出测试用例
import $exit from '../dist/exit'
$exit()