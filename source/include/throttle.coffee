$iThrottle = 0
$tThrottle = {}
$tsThrottle = {}

# throttle(time: number, callback: Function): Function
$.throttle = (time, callback) ->

  $vt 'throttle', time, 'number'
  $vt 'throttle', callback, 'function'

  $iThrottle++
  $tsThrottle[$iThrottle] = 0

  return (index = $iThrottle) ->
    $.clearTimeout $tThrottle[index]
    $tThrottle[index] = $.setTimeout ->
      callback()
      $tsThrottle[index] = $.now()
    , $tsThrottle[index] - $.now() + time

