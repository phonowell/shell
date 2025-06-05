# @ts-check

import $last from '../src/last'

do ->

  list = [1, 2, 3]

  item = $last list
  unless item == 3
    throw 0