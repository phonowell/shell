# @ts-check

import $delay from './delay'

###* @type import('../type/module').Defer ###
export default ($func, $args...) ->

  return $delay ->
    $func $args...
  , 1