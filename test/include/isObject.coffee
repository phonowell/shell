# @ts-check

import $isObject from '../../source/module/isObject'

do ->

  map = {
    a: 1
  }

  result = $isObject map
  unless result then throw 1