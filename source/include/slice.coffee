# slice<T>(list: T[], start = 0, end = list.length): T[]
$.slice = (args...) ->

  [$list, $start, $end] = $pickArgumentSlice args

  $len = $.length $list

  if $start > $len
    $start = $len
  if $start < 0
    $start = $len + $start

  if $end > $len
    $end = $len
  if $end < 0
    $end = $len + $end

  $isReverse = false
  if $start > $end
    $isReverse = true
    [$start, $end] = [$end, $start]

  $listNew = []
  $n = 0
  $max = $end - $start

  while $n < $max
    $.push $listNew, $list[$start + $n]
    $n++

  if $isReverse
    return $.reverse $listNew

  return $listNew

$pickArgumentSlice = (args) ->

  switch $.length args
    when 1 then [$list, $start, $end] = [args[0], 0, $.length args[0]]
    when 2 then [$list, $start, $end] = [args[0], args[1], $.length args[0]]
    when 3 then [$list, $start, $end] = args

  return [$list, $start, $end]