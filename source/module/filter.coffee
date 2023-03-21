# @ts-check

import $push from './push'

###* @type import('../type/module').Filter ###
export default (list, callback) ->

  $listResult = []

  for $item, $i in list
    unless callback $item, $i then continue
    $push $listResult, $item

  return $listResult