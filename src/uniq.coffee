# @ts-check

import $isString from './isString'
import $join from './join'
import $split from './split'

###* @type import('./uniq').Uniq ###
export default (list) ->

  $hasString = false
  for $item in list
    if $isString $item
      $hasString = true
      break

  $string = $join list, ','

  if $hasString then Native 'Sort, $string, C U D,'
  else Native 'Sort, $string, N U D,'

  return $split $string, ','