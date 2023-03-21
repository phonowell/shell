# @ts-check

import $setTimeout from './setTimeout'

###* @type import('../type/module').Delay ###
export default ($func, $wait, $args...) ->

  $timer = $setTimeout ->
    $func $args...
  , $wait

  return $timer