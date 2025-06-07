# @ts-check

###* @type import('./each').Each ###
export default (list, cb) ->
  for $item, $i in list
    cb $item, $i
  return