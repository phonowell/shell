# @ts-check

import $isFunction from '../src/isFunction'
import $max from '../src/max'

do ->

  unless $isFunction $max
    throw new Error '$.max is not a function'

  result = $max [1, 2, 3]
  unless result == 3
    throw new Error '$.max() does not return the correct result'
