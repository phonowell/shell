# @ts-check

import $isNumber from '../src/isNumber'

do ->

  n = 1

  result = $isNumber n
  unless result then throw 1