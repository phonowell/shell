# sum(list: number[]): number
$.sum = (list) ->

  $vt 'sum', list, 'array'

  $result = 0
  for $n in list
    $result = $result + $n

  return $result