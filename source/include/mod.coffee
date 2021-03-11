# mod(dividend: number, divisor: number): number
$.mod = (dividend, divisor) ->

  $validateType 'mod', dividend, 'number'
  $validateType 'mod', divisor, 'number'

  return Mod dividend, divisor