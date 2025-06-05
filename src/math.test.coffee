# @ts-check

import $math from '../src/math'
import $isFunction from '../src/isFunction'

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
      throw new Error "$.math.#{fn} is not a function"