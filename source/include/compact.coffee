# compact<T>(list: T[]): T[]
$.compact = (list) ->

  $listNew = []
  for $item in list
    unless $item then continue
    $.push $listNew, $item

  return $listNew