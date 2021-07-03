# take<T>(list: T[], count: number = 1): T[]
$.take = (list, count = 1) ->

  $len = $.length list
  unless $len
    return []

  unless count >= 0
    return []

  if count >= $len
    count = $len

  $listNew = []
  for $item, $i in list
    if $i >= count
      break
    $.push $listNew, $item

  return $listNew