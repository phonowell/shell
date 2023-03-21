# @ts-check

###* @type import('../type/module').Add ###
export default (args...) ->
  $result = 0
  for $arg in args
    $result = $result + $arg
  return $result