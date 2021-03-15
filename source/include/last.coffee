# last(list: unknown[]): unknown
$.last = (list) ->
  $vt 'last', list, 'array'
  return list[($.length list) - 1]