# map(list: unknown[], callback: Function): unknown[]
$.map = (list, callback) ->

  $vt 'map', list, 'array'
  $vt 'map', callback, 'function'

  $listResult = []

  for $item, $i in list
    $.push $listResult, callback $item, $i

  return $listResult