# round(n: number): number
$.round = (n) ->
  $vt 'round', n, 'number'
  return Round n