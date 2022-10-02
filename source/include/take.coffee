# @ts-check
# take<T>(list: T[], count: number = 1): T[]
$.take = (list, count = 1) ->

  $len = $.length list
  unless $len then return []

  unless count >= 0 then return []

  if count >= $len then count = $len

  $listNew = []
  for $item, $i in list
    if $i >= count then break
    $.push $listNew, $item

  return $listNew