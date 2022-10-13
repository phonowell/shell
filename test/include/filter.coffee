# @ts-check

import $filter from '../../source/module/filter'
import $join from '../../source/module/join'

do ->

  list = [1, 2, 3]
  listA = $filter list, (it) -> it != 2
  unless ($join listA, '') == '13'
    throw 0