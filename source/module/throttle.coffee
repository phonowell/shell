# @ts-check

import $clearTimeout from './clearTimeout'
import $now from './now'
import $setTimeout from './setTimeout'

$iThrottle = 0
$tThrottle = {}
$tsThrottle = {}

# throttle(time: number, callback: Fn): Fn
###* @type {import('@/type/module').Throttle} *###
export default (time, callback) ->

  $iThrottle++
  $tsThrottle[$iThrottle] = 0

  return (index = $iThrottle) ->
    $clearTimeout $tThrottle[index]
    $tThrottle[index] = $setTimeout ->
      callback()
      $tsThrottle[index] = $now()
    , $tsThrottle[index] - $now() + time

