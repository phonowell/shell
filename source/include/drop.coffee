# drop(list: unknown[], n = 1): unknown[]
$.drop = (list, n = 1) ->

  unless $.isArray list
    throw new Error '$.drop: invalid type'

  $listNew = []

  for $item, $i in list
    unless $i >= n
      continue
    $.push $listNew, $item

  return $listNew