# @ts-check

import $join from '../src/join'
import $map from '../src/map'

do ->

  list = [1, 2, 3]

  result = $join $map list, (n) -> n + 1
  unless result == '2,3,4'
    throw 0