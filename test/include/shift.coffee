# @ts-check

import $shift from '../../source/module/shift'

do ->

  list = [0, 1, 2]
  first = $shift list

  unless first == 0 then throw 0
  unless list[0] == 1 and list[1] == 2 then throw 1