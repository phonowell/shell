# @ts-check

import $subString from '../../source/module/subString'

do ->

  string = 'string'

  result = $subString string, 0
  unless result == string then throw result

  result = $subString string, 1
  unless result == 'tring' then throw result

  result = $subString string, 1, 2
  unless result == 't' then throw result

  result = $subString string, 3, 5
  unless result == 'in' then throw result