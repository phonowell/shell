# @ts-check

import $each from '../src/each'
import $length from '../src/length'
import $join from '../src/join'

do ->

  list = [1, 2, 3, 4]
  listA = []
  length = $length list

  $each list, (it, i) -> listA[length - i] = it

  string = $join list
  unless string = '4321'
    throw string