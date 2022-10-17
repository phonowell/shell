# @ts-check

import $noop from './noop'

# random(min: number = 0, max: number = 1): number
###* @type import('../type/module').Random} *###
export default ($min = 0, $max = 1) ->
  $result = 0
  $noop $min, $max
  Native 'Random, $result, $min, $max'
  return $result