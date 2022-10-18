# @ts-check

# delete<T extends Object>(object: T, ...keys: (keyof T)[]) => void
###* @type import('../type/module').Delete ###
export default ($target, $keys...) ->
  for $k in $keys
    $target.Delete $k
  return