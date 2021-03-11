# abs(n: number): number
$.abs = (n) ->
  $validateType 'abs', n, 'number'
  return Abs n