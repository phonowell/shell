# @ts-check

import $join from '../../source/module/join'
import $map from '../../source/module/map'

do ->

  list = [1, 2, 3]

  result = $join $map list, (n) -> n + 1
  unless result == '2,3,4'
    throw 0