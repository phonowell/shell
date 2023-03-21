# @ts-check

import $length from './length'
import $push from './push'

###* @type import('../type/module').Chunk ###
export default ($list, $size = 1) ->

  $listNew = []
  $len = $length $list

  $i = 0
  while $i < $len / $size

    $listTemp = []
    $j = 0
    while $j < $size

      $index = $i * $size + $j
      unless $index < $len then break

      $push $listTemp, $list[$index]
      $j++

    $push $listNew, $listTemp
    $i++

  return $listNew