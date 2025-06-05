# @ts-check

import $isNumber from '../src/isNumber'
import $now from '../src/now'

do ->

  now = $now()
  unless $isNumber now
    throw 0