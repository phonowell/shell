# drop<T>(list: T[], n = 1): T[]
$.drop = (list, n = 1) ->

  $listNew = []

  for $item, $i in list
    unless $i >= n
      continue
    $.push $listNew, $item

  return $listNew