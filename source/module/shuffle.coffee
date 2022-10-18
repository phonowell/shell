# @ts-check

import $join from './join'
import $split from './split'

# shuffle(list: string[]): string[]
###* @type import('../type/module').Shuffle} ###
export default (list) ->
  $string = $join list, ','
  Native 'Sort, $string, Random D,'
  return $split $string, ','