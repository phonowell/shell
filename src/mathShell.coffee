# @ts-check

import $noop from './noop'

class MathShell

  ###* @type import('./mathShell').MathShell['abs'] ###
  abs: ($n) -> Abs $n

  ###* @type import('./mathShell').MathShell['ceil'] ###
  ceil: ($n) -> Ceil $n

  ###* @type import('./mathShell').MathShell['floor'] ###
  floor: ($n) -> Floor $n

  ###* @type import('./mathShell').MathShell['max'] ###
  max: ($number...) -> Max $number...

  ###* @type import('./mathShell').MathShell['min'] ###
  min: ($number...) -> Min $number...

  ###* @type import('./mathShell').MathShell['round'] ###
  round: ($n) -> Round $n

$noop MathShell