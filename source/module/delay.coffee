# @ts-check

import $setTimeout from './setTimeout'

# delay(func: Fn, wait: number, ...args: unknown[]): Fn
###* @type import('../type/module').Delay ###
export default ($func, $wait, $args...) ->

  $timer = $setTimeout ->
    $func $args...
  , $wait

  return $timer