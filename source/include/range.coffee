# range(start = 0, end: number, step = 1): number[]
$.range = (args...) ->

  switch $.length args
    when 1 then [$start, $end, $step] = [0, args[0], 1]
    when 2 then [$start, $end, $step] = [args[0], args[1], 1]
    when 3 then [$start, $end, $step] = args
    else throw new Error '$.range: invalid arguments'

  if $start == $end
    return [$start]

  if $start > $end
    return []

  $listResult = []
  $n = 0
  $max = $end - $start

  while $n < $max
    $.push $listResult, $start + $step * $n
    $n++

  return $listResult