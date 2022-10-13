# @ts-check

import $lte from '../../source/module/lte'

do ->

  result = $lte 1, 2
  unless result then throw 0

  result = $lte 2, 1
  if result then throw 1

  result = $lte 1, 1
  unless result then throw 2