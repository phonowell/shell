# @ts-check

import './include/head.ahk'

import $alert from '../dist/module/alert'
import $getPosition from '../dist/module/getPosition'
import $join from '../dist/module/join'
import $move from '../dist/module/move'

do ->

  $move [100, 100]
  [x, y] = $getPosition()
  $alert $join [x, y], ', '