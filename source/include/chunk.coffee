# chunk(list: unknown[], n = 1): unknown[][]
$.chunk = (list, n = 1) ->

  $vt 'chunk', list, 'array'
  $vt 'chunk',  n, 'number'

  $listNew = []

  $i = 0
  while $i < ($.length list) / n

    $listTemp = []
    $j = 0
    while $j < n
      $.push $listTemp, list[$i * n + $j]
      $j++

    $.push $listNew, $listTemp
    $i++

  return $listNew