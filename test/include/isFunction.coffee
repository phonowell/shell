# @ts-check

import $isFunction from '../../source/module/isFunction'

do ->

  result = $isFunction $isFunction
  unless result then throw 1