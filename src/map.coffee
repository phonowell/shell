# @ts-check

###* @type import('./map').Map ###
export default (list, callback) ->

  ###* @type ReturnType<callback>[] ###
  $listResult = []

  for $item, $i in list
    $listResult.Push callback $item, $i

  return $listResult