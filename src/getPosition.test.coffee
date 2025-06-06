# @ts-check

import $getPosition from '../src/getPosition'
import $isFunction from '../src/isFunction'
import $move from '../src/move'

unless $isFunction $getPosition
  throw new Error 'getPosition should be a function'

$move [50, 100]
p = $getPosition()

unless p[0] == 50 and p[1] == 100
  throw new Error "getPosition failed: expected [100, 100], got [#{p[0]}, #{p[1]}]"