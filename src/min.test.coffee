# @ts-check

import $isFunction from '../src/isFunction'
import $min from '../src/min'

do ->

  unless $isFunction $min
    throw new Error '$.min is not a function'

  result = $min [1, 2, 3]
  unless result == 1
    throw new Error '$.min() does not return the correct result'