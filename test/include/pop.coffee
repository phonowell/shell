# @ts-check

import $pop from '../../source/module/pop'

do ->

  list = [0, 1, 2]
  last = $pop list

  unless last == 2 then throw 0
  unless list[0] == 0 and list[1] == 1 then throw 1