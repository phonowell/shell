# @ts-check

import $isFunction from '../../source/module/isFunction'
import $max from '../../source/module/max'

do ->

  unless $isFunction $max
    throw '$.max is not a function'

  result = $max [1, 2, 3]
  unless result == 3
    throw '$.max() does not return the correct result'
