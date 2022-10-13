# @ts-check

import $isNumber from '../../source/module/isNumber'
import $now from '../../source/module/now'

do ->

  now = $now()
  unless $isNumber now
    throw 0