# @ts-check
# add(args...: number[]): number
$.add = (args...) ->
  $result = 0
  for $arg in args
    $result = $result + $arg
  return $result