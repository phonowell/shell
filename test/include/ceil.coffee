# @ts-check

import $ceil from '../../source/module/ceil'

do ->

  n = 1.2
  result = $ceil n
  unless result == 2
    throw 0

  n = -1.2
  result = $ceil n
  unless result == -1
    throw 1