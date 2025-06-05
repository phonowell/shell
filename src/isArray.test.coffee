# @ts-check

import $isArray from '../src/isArray'

do ->

  list = []
  result = $isArray list
  unless list then throw 1

  list = [1, 2, 3]
  result = $isArray list
  unless result then throw 2