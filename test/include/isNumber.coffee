# @ts-check

import $isNumber from '../../source/module/isNumber'

do ->

  n = 1

  result = $isNumber n
  unless result then throw 1