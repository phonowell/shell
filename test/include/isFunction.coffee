# @ts-check

import $isFunction from '../../source/module/isFunction'

do ->

  fn = -> ''

  result = $isFunction fn
  unless result then throw 1