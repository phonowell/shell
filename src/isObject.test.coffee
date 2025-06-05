# @ts-check

import $isObject from '../src/isObject'

do ->

  map = {
    a: 1
  }

  result = $isObject map
  unless result then throw 1