# @ts-check

###* @type import('./reverse').Reverse ###
export default (list) ->

  $len = list.Length()
  $listNew = []
  for $item, $i in list
    $listNew[$len - 1 - $i] = $item

  for $item, $i in $listNew
    list[$i] = $item

  return list