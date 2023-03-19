# @ts-check

import $join from './join'
import $split from './split'

###* @type import('../type/module').Shuffle ###
export default (list) ->
  $string = $join list, ','
  Native 'Sort, $string, Random D,'
  return $split $string, ','