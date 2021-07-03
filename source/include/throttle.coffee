$iThrottle = 0
$tThrottle = {}
$tsThrottle = {}

# type Fn = () => unknown
# throttle(time: number, callback: Fn): Fn
$.throttle = (time, callback) ->

  $iThrottle++
  $tsThrottle[$iThrottle] = 0

  return (index = $iThrottle) ->
    $.clearTimeout $tThrottle[index]
    $tThrottle[index] = $.setTimeout ->
      callback()
      $tsThrottle[index] = $.now()
    , $tsThrottle[index] - $.now() + time

