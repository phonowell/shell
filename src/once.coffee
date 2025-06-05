# @ts-check

###* @type Record<number, [boolean, unknown]> ###
$cacheOnce = {}
$indexOnce = 0

###* @type import('./once').Once ###
export default (callback) ->

  $i = $indexOnce
  $indexOnce++

  $cacheOnce[$i] = [false, '']

  return (args...) ->

    if $cacheOnce[$i][0] then return $cacheOnce[$i][1]

    $result = callback args...

    $cacheOnce[$i] = [true, $result]
    return $result