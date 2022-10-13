# @ts-check

import $concat from '../../source/module/concat'
import $join from '../../source/module/join'

do ->

  listA = $concat [1, 2, 3], 4, 5, [6, 7], 8, [9]
  unless ($join listA, '') == '123456789'
    throw listA