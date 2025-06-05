# @ts-check

import $isFunction from '../src/isFunction'

do ->

  result = $isFunction $isFunction
  unless result then throw 1