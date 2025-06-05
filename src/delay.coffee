# @ts-check

import $setTimeout from './setTimeout'

###* @type import('./delay').Delay ###
export default ($func, $wait, $args...) ->

  $timer = $setTimeout ->
    $func $args...
  , $wait

  return $timer