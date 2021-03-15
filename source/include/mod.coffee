# mod(dividend: number, divisor: number): number
$.mod = (dividend, divisor) ->

  $vt 'mod', dividend, 'number'
  $vt 'mod', divisor, 'number'

  return Mod dividend, divisor