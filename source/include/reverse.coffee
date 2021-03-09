# reverse(list: unknown[]): unknown[]
$.reverse = (list) ->

  unless $.isArray list
    throw new Error '$.reverse: invalid type'

  $len = $.length list
  $listNew = []
  for $key, $i in list
    $listNew[$len - 1 - $i] = $key

  return $listNew