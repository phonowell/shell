# @ts-check

$cacheOnce = {}
$indexOnce = 0

###* @type import('../type/module').Once ###
export default (callback) ->

  $i = $indexOnce
  $indexOnce++

  $cacheOnce[$i] = [false, '']

  return (args...) ->

    if $cacheOnce[$i][0] then return $cacheOnce[$i][1]

    $result = callback args...

    $cacheOnce[$i] = [true, $result]
    return $result