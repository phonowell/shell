# @ts-check

import $getType from './getType'
import $length from './length'
import $push from './push'
import $reverse from './reverse'

###*
@template T
@type import('./slice').Slice<T>
###
export default (list, start = 0, end = 0) ->

  unless $getType list
    throw new Error "$.slice: invalid type '#{$getType list}'"

  $len = $length list
  unless end then end = $len

  if start > $len then start = $len
  if start < 0 then start = $len + start

  if end > $len then end = $len
  if end < 0 then end = $len + end

  $isReverse = false
  if start > end
    $isReverse = true
    [start, end] = [end, start]

  ###* @type {T[]} ###
  $listNew = []
  $n = 0
  $max = end - start

  while $n < $max
    $push $listNew, list[start + $n]
    $n++

  if $isReverse then return $reverse $listNew
  return $listNew