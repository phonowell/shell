# sum(list: number[]): number
$.sum = (list) ->

  unless $.isArray list
    throw new Error '$.sum: invalid type'

  $result = 0
  for $n in list
    $result = $result + $n

  return $result