# @ts-check

import $length from './length'
import $push from './push'

###* @type import('./range').Range ###
export default (args...) ->

  switch $length args
    when 1 then [$start, $end, $step] = [0, args[0], 1]
    when 2 then [$start, $end, $step] = [args[0], args[1], 1]
    when 3 then [$start, $end, $step] = args
    else throw new Error '$.range: invalid arguments'

  if $start == $end then return [$start]

  if $start > $end then return []

  ###* @type number[] ###
  $listResult = []
  $n = 0
  $max = $end - $start

  while $n < $max
    $push $listResult, $start + $step * $n
    $n++

  return $listResult