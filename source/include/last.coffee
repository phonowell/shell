# last(list: unknown[]): unknown
$.last = (list) ->
  $validateType 'last', list, 'array'
  return list[($.length list) - 1]