# @ts-check

import $noop from './noop'

class MathShell

  ###* @type import('../type/mathShell').MathShell['abs'] ###
  abs: ($n) -> Abs $n

  ###* @type import('../type/mathShell').MathShell['ceil'] ###
  ceil: ($n) -> Ceil $n

  ###* @type import('../type/mathShell').MathShell['floor'] ###
  floor: ($n) -> Floor $n

  ###* @type import('../type/mathShell').MathShell['max'] ###
  max: ($number...) -> Max $number...

  ###* @type import('../type/mathShell').MathShell['min'] ###
  min: ($number...) -> Min $number...

  ###* @type import('../type/mathShell').MathShell['round'] ###
  round: ($n) -> Round $n

$noop MathShell