# @ts-check

import $math from '../../source/module/math'
import $isFunction from '../../source/module/isFunction'

do ->

  for fn in [
    'abs'
    'ceil'
    'floor'
    'max'
    'min'
    'round'
  ]
    unless $isFunction $math[fn]
      throw "$.math.#{fn} is not a function"