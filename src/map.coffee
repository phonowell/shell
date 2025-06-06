# @ts-check

import $push from './push'

###* @type import('./map').Map ###
export default (list, callback) ->

  ###* @type ReturnType<callback>[] ###
  $listResult = []

  for $item, $i in list
    $push $listResult, callback $item, $i

  return $listResult