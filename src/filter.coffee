# @ts-check

###* @type import('./filter').Filter ###
export default (list, cb) ->

  ###* @type typeof list ###
  $listNew = []

  for $item, $i in list
    unless cb $item, $i then continue
    $listNew.Push $item

  return $listNew