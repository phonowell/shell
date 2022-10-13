# @ts-check

import $once from '../../source/module/once'

do ->

  map = {
    n: 0
  }

  add = $once -> map.n += 1

  add()
  unless map.n == 1 then throw 0

  add()
  unless map.n == 1 then throw 1