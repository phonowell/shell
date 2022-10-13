# @ts-check

import $add from '../../source/module/add'

do ->

  a = 1
  b = 2
  c = 3
  d = -4

  result = $add a
  unless result == 1
    throw result

  result = $add a, b, c
  unless result == 6
    throw result

  result = $add a, b, c, d
  unless result == 2
    throw result