# @ts-check

###* @type import('./filter').Filter ###
export default (list, callback) ->

  ###* @type typeof list ###
  $listResult = []

  for $item, $i in list
    unless callback $item, $i then continue
    $listResult.Push $item

  return $listResult