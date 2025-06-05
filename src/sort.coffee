# @ts-check

import $join from './join'
import $split from './split'

###* @type import('./sort').Sort ###
export default (list) ->
  $string = $join list, ','
  Native 'Sort, $string, C D,'
  # Native 'Sort, $string, N D,'
  return $split $string, ','