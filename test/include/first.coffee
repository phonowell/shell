# @ts-check

import $first from '../../source/module/first'

do ->

  list = [1, 2, 3]
  n = $first list

  unless n == 1
    throw n