# @ts-check

import $delay from './delay'

###* @type import('./defer').Defer ###
export default ($func, $args...) ->

  return $delay ->
    $func $args...
  , 1