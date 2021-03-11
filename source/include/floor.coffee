# floor(n: number): number
$.floor = (n) ->
  $validateType 'floor', n, 'number'
  return Floor n