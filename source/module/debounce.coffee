# @ts-check

import $clearTimeout from './clearTimeout'
import $setTimeout from './setTimeout'

$iDebounce = 0
$tDebounce = {}

###* @type import('../type/module').Debounce ###
export default ($func, $wait) ->

  $iDebounce++

  return ($index = $iDebounce) ->
    $clearTimeout $tDebounce[$index]
    $tDebounce[$index] = $setTimeout $func, $wait