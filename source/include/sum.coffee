# sum(list: number[]): number
$.sum = (list) ->

  $validateType 'sum', list, 'array'

  $result = 0
  for $n in list
    $result = $result + $n

  return $result