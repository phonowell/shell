# @ts-check

import $clearTimeout from './clearTimeout'
import $now from './now'
import $setTimeout from './setTimeout'

$iThrottle = 0
$tThrottle = {}
$tsThrottle = {}

###* @type import('../type/module').Throttle ###
export default ($func, $wait) ->

  $iThrottle++
  $tsThrottle[$iThrottle] = 0

  return ($index = $iThrottle) ->
    $clearTimeout $tThrottle[$index]
    $tThrottle[$index] = $setTimeout ->
      $func()
      $tsThrottle[$index] = $now()
    , $tsThrottle[$index] - $now() + $wait

