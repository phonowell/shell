# @ts-check

import $replace from '../src/replace'

do ->

  a = ' 123 '
  b = $replace a, ' ', ''
  unless b == '123'
    throw b

do ->

  a = 'alt + f4'
  b = $replace a, ' ', ''
  unless b == 'alt+f4'
    throw b