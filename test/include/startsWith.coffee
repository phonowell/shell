# @ts-check

import $startsWith from '../../source/module/startsWith'

do ->

  string = 'string'

  result = $startsWith string, 's'
  unless result then throw 1

  result = $startsWith string, 't'
  if result then throw 2