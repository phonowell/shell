# @ts-check

###* @type import('./each').Each ###
export default (list, callback) ->
  for $item, $i in list
    callback $item, $i
  return