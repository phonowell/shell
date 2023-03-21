# @ts-check

import $push from './push'

###* @type import('../type/module').Map ###
export default (list, callback) ->

  $listResult = []

  for $item, $i in list
    $push $listResult, callback $item, $i

  return $listResult