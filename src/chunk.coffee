# @ts-check

import $length from './length'
import $push from './push'

###* @type import('./chunk').Chunk ###
export default (list, size = 1) ->

  ###* @type (typeof list)[] ###
  $listNew = []
  $len = $length list

  $i = 0
  while $i < $len / size

    ###* @type typeof list ###
    $listTemp = []
    $j = 0
    while $j < size

      $index = $i * size + $j
      unless $index < $len then break

      $push $listTemp, list[$index]
      $j++

    $push $listNew, $listTemp
    $i++

  return $listNew