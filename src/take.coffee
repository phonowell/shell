# @ts-check

import $length from './length'
import $push from './push'

###* @type import('./take').Take ###
export default (list, count = 1) ->

  $len = $length list
  unless $len then return []

  unless count >= 0 then return []

  if count >= $len then count = $len

  ###* @type typeof list ###
  $listNew = []
  for $item, $i in list
    if $i >= count then break
    $push $listNew, $item

  return $listNew