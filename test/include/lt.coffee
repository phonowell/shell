# @ts-check

import $lt from '../../source/module/lt'

do ->

  result = $lt 1, 2
  unless result then throw 0

  result = $lt 2, 1
  if result then throw 1

  result = $lt 1, 1
  if result then throw 2