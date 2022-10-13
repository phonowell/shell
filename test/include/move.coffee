# @ts-check

import $getPosition from '../../source/module/getPosition'
import $move from '../../source/module/move'
import $join from '../../source/module/join'
import $sleep from '../../source/module/sleep'

do ->

  $move [100, 100]
  [x, y] = $getPosition()

  unless x == 100 and y == 100
    throw $join [x, y], ', '

  $sleep 1e3