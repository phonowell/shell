# take(list: unknown[], count: number = 1): unknown[]
$.take = (list, count = 1) ->

  unless $.isArray list
    throw new Error '$.take: invalid type'

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