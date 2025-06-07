# @ts-check

###* @type import('./take').Take ###
export default (list, count = 1) ->

  $len = list.Length()
  unless $len then return []

  unless count >= 0 then return []

  if count >= $len then count = $len

  ###* @type typeof list ###
  $listNew = []
  for $item, $i in list
    if $i >= count then break
    $listNew.Push $item

  return $listNew