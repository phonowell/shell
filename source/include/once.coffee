$cacheOnce = {}
$indexOnce = 0

# once(callback: Function): Function
$.once = (callback) ->

  unless $.isFunction callback
    throw new Error '$.once: invalid type'

  $i = $indexOnce
  $indexOnce++

  $cacheOnce[$i] = [false, '']

  return (args...) ->

    if $cacheOnce[$i][0]
      return $cacheOnce[$i][1]

    $result = callback args...

    $cacheOnce[$i] = [true, $result]
    return $result