# @ts-check

import './include/head.ahk'

import $exit from '../dist/module/exit'
import $off from '../dist/module/off'
import $on from '../dist/module/on'
import $press from '../dist/module/press'
import $preventDefaultKey from '../dist/module/preventDefaultKey'
import $reload from '../dist/module/reload'

do ->

  $on 'f4', $exit
  $on 'f5', $reload

  $on 'f2', -> $on '1', -> $press '2'
  $on 'f3', -> $off '1'

  $on 'f6', -> $preventDefaultKey '1', on
  $on 'f7', -> $preventDefaultKey '1', off

