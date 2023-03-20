# @ts-check

import './include/head.ahk'

import $alert from '../dist/module/alert'
import $exit from '../dist/module/exit'
import $on from '../dist/module/on'

do ->

  $on 'f1', -> $alert 'f1'
  $on 'f4', $exit