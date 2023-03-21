# @ts-check

###* @type import('../type/module').Each ###
export default (list, callback) ->
  for $item, $i in list
    callback $item, $i
  return