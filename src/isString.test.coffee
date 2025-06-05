# @ts-check

import $isString from '../src/isString'

do ->

  string = 'aloha'

  result = $isString string
  unless result then throw 1