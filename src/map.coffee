# @ts-check

import $push from './push'

###*
@template R
@type import('./map').Map
###
export default (list, callback) ->

  ###* @type R[] ###
  $listResult = []

  for $item, $i in list
    $push $listResult, callback $item, $i

  return $listResult