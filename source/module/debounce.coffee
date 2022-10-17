# @ts-check

import $clearTimeout from './clearTimeout'
import $setTimeout from './setTimeout'

$iDebounce = 0
$tDebounce = {}

# debounce(time: number, callback: Fn): Fn
###* @type import('../type/module').Debounce ###
export default (time, callback) ->

  $iDebounce++

  return (index = $iDebounce) ->
    $clearTimeout $tDebounce[index]
    $tDebounce[index] = $setTimeout callback, time