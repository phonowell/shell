# ceil(n: number): number
$.ceil = (n) ->
  $validateType 'ceil', n, 'number'
  return Ceil n