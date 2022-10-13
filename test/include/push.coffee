# @ts-check

import $push from '../../source/module/push'

do ->

  list = [0]

  $push list, 1
  unless list[1] == 1 then throw 0

  len = $push list, 2, 3, 4
  unless len == 5 then throw 1
  unless list[2] == 2 then throw 2
  unless list[4] == 4 then throw 3