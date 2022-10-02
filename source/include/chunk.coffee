# @ts-check
# chunk<T>(list: T[], n = 1): T[][]
$.chunk = (list, n = 1) ->

  $listNew = []
  $length = $.length list

  $i = 0
  while $i < $length / n

    $listTemp = []
    $j = 0
    while $j < n

      $index = $i * n + $j
      unless $index < $length then break

      $.push $listTemp, list[$index]
      $j++

    $.push $listNew, $listTemp
    $i++

  return $listNew