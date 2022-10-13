# @ts-check

import $compact from '../../source/module/compact'
import $join from '../../source/module/join'

do ->

  list = [
    0, 1
    false, true
    '', 'x'
  ]
  listA = $compact list
  unless ($join listA, '') == '11x'
    throw listA