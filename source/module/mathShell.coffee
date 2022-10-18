# @ts-check

import $noop from './noop'

class MathShell

  # abs(n: number): number
  ###* @type import('../type/mathShell').MathShell['abs'] ###
  abs: ($n) -> Abs $n

  # ceil(n: number): number
  ###* @type import('../type/mathShell').MathShell['ceil'] ###
  ceil: ($n) -> Ceil $n

  # floor(n: number): number
  ###* @type import('../type/mathShell').MathShell['floor'] ###
  floor: ($n) -> Floor $n

  # max(...number: number[]): number
  ###* @type import('../type/mathShell').MathShell['max'] ###
  max: ($number...) -> Max $number...

  # min(...number: number[]): number
  ###* @type import('../type/mathShell').MathShell['min'] ###
  min: ($number...) -> Min $number...

  # round(n: number): number
  ###* @type import('../type/mathShell').MathShell['round'] ###
  round: ($n) -> Round $n

$noop MathShell