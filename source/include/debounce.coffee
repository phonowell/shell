$iDebounce = 0
$tDebounce = {}

# debounce(time: number, callback: Function): Function
$.debounce = (time, callback) ->

  $validateType 'debounce', time, 'number'
  $validateType 'debounce', callback, 'function'

  $iDebounce++

  return (index = $iDebounce) ->
    $.clearTimeout $tDebounce[index]
    $tDebounce[index] = $.setTimeout callback, time