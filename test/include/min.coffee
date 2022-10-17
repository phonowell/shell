# @ts-check

import $isFunction from '../../source/module/isFunction'
import $min from '../../source/module/min'

do ->

  unless $isFunction $min
    throw '$.min is not a function'

  result = $min [1, 2, 3]
  unless result == 1
    throw '$.min() does not return the correct result'