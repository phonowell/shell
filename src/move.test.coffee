# @ts-check

import $isFunction from '../src/isFunction'
import $move from '../src/move'
import $getPosition from '../src/getPosition'

unless $isFunction $move
  throw new Error 'move should be a function'

$move [50, 100]
p = $getPosition()

unless p[0] == 50 and p[1] == 100
  throw new Error 'Expected position to be [50, 100] after move'