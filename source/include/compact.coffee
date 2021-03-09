# compact(list: unknown[]): unknown[]
$.compact = (list) ->

  unless $.isArray list
    throw new Error '$.compact: invalid type'

  $listNew = []
  for $item in list
    unless $item
      continue
    $.push $listNew, $item

  return $listNew