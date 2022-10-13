# @ts-check

import $gte from '../../source/module/gte'

do ->

  result = $gte 2, 1
  unless result then throw 0

  result = $gte 1, 2
  if result then throw 1

  result = $gte 1, 1
  unless result then throw 2