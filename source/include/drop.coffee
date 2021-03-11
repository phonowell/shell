# drop(list: unknown[], n = 1): unknown[]
$.drop = (list, n = 1) ->

  $validateType 'drop', list, 'array'
  $validateType 'drop', n, 'number'

  $listNew = []

  for $item, $i in list
    unless $i >= n
      continue
    $.push $listNew, $item

  return $listNew