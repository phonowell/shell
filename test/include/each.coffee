# @ts-check

import $each from '../../source/module/each'
import $length from '../../source/module/length'
import $join from '../../source/module/join'

do ->

  list = [1, 2, 3, 4]
  listA = []
  length = $length list

  $each list, (it, i) -> listA[length - i] = it

  string = $join list
  unless string = '4321'
    throw string