$cacheOnce = {}
$indexOnce = 0

# type Fn = () => unknown
# once(callback: Fn): Fn
$.once = (callback) ->

  $i = $indexOnce
  $indexOnce++

  $cacheOnce[$i] = [false, '']

  return (args...) ->

    if $cacheOnce[$i][0] then return $cacheOnce[$i][1]

    $result = callback args...

    $cacheOnce[$i] = [true, $result]
    return $result