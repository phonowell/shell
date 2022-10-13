# @ts-check

import $join from '../../source/module/join'

do ->

  list = [1, 2, 3, 4, 5]

  result = $join list
  unless result == '1,2,3,4,5'
    throw 1

  result = $join list, ''
  unless result == '12345'
    throw 2