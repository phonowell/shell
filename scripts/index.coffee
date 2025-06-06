# @ts-check

import './include/head.ahk'

import $exit from '../src/exit'
import $off from '../src/off'
import $on from '../src/on'
import $press from '../src/press'
import $preventDefaultKey from '../src/preventDefaultKey'
import $reload from '../src/reload'

do ->

  $on 'f4', $exit
  $on 'f5', $reload

  $on 'f2', -> $on '1', -> $press '2'
  $on 'f3', -> $off '1'

  $on 'f6', -> $preventDefaultKey '1', on
  $on 'f7', -> $preventDefaultKey '1', off

