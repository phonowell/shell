# @ts-check
# sum(list: number[]): number
$.sum = (list) ->

  $result = 0
  for $n in list
    $result = $result + $n

  return $result