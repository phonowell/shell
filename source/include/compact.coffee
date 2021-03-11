# compact(list: unknown[]): unknown[]
$.compact = (list) ->

  $validateType 'compact', list, 'array'

  $listNew = []
  for $item in list
    unless $item
      continue
    $.push $listNew, $item

  return $listNew