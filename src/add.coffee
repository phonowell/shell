# @ts-check

###* @type import('./add').Add ###
export default (args...) ->
  $result = 0
  for $arg in args
    $result = $result + $arg
  return $result