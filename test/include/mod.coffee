# @ts-check

import $mod from '../../source/module/mod'

do ->

  n = $mod 5, 2
  unless n == 1
    throw n

  n = $mod 7, 5
  unless n == 2
    throw n