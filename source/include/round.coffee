# round(n: number): number
$.round = (n) ->
  $validateType 'round', n, 'number'
  return Round n