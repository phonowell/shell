# @ts-check

import $noop from './noop'

###* @type import('../type/module').Random ###
export default ($min = 0, $max = 1) ->
  $result = 0
  $noop $min, $max
  Native 'Random, $result, $min, $max'
  return $result