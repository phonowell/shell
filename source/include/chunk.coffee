# chunk<T>(list: T[], n = 1): T[][]
$.chunk = (list, n = 1) ->

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