# @ts-check

import $delay from './delay'

# defer(func: Fn, ...args: unknown[]): Fn
###* @type import('../type/module').Defer ###
export default ($func, $args...) ->

  return $delay ->
    $func $args...
  , 1