# reverse(list: unknown[]): unknown[]
$.reverse = (list) ->

  $validateType 'reverse', list, 'array'

  $len = $.length list
  $listNew = []
  for $item, $i in list
    $listNew[$len - 1 - $i] = $item

  for $item, $i in $listNew
    list[$i] = $item

  return list