# @ts-check
import '../scripts/head.ahk'

import $getPosition from '../dist/getPosition'
import $isFunction from '../dist/isFunction'
import $move from '../dist/move'

unless $isFunction $getPosition
  throw new Error 'getPosition should be a function'

$move [50, 100]
p = $getPosition()

unless p[0] == 50 and p[1] == 100
  throw new Error "getPosition failed: expected [100, 100], got [#{p[0]}, #{p[1]}]"

# 退出测试用例
import $exit from '../dist/exit'
$exit()