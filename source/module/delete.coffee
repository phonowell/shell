# @ts-check

###* @type import('../type/module').Delete ###
export default ($target, $keys...) ->
  for $k in $keys
    $target.Delete $k
  return