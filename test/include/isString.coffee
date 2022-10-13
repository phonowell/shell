# @ts-check

import $isString from '../../source/module/isString'

do ->

  string = 'aloha'

  result = $isString string
  unless result then throw 1