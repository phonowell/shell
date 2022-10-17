# @ts-check

import $length from './length'
import $push from './push'

# chunk<T>(list: T[], n = 1): T[][]
###* @type import('../type/module').Chunk ###
export default (list, n = 1) ->

  $listNew = []
  $len = $length list

  $i = 0
  while $i < $len / n

    $listTemp = []
    $j = 0
    while $j < n

      $index = $i * n + $j
      unless $index < $len then break

      $push $listTemp, list[$index]
      $j++

    $push $listNew, $listTemp
    $i++

  return $listNew