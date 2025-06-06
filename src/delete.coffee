# @ts-check

###* @type import('./delete').Delete ###
export default (target, keys...) ->
  for $k in keys
    target.Delete $k
  return