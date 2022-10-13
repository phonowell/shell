# @ts-check

import $getPosition from '../../source/module/getPosition'
import $isFunction from '../../source/module/isFunction'
import $join from '../../source/module/join'
import $move from '../../source/module/move'
import $sleep from '../../source/module/sleep'

do ->

  unless $isFunction $getPosition
    throw new Error '$getPosition is not a function'

  $move [100, 100]
  [x, y] = $getPosition()
  unless x == 100 and y == 100
    throw $join [x, y], ', '

  $sleep 1e3