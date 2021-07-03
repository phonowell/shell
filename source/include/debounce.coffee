$iDebounce = 0
$tDebounce = {}

# type Fn = () => unknown
# debounce(time: number, callback: Fn): Fn
$.debounce = (time, callback) ->

  $iDebounce++

  return (index = $iDebounce) ->
    $.clearTimeout $tDebounce[index]
    $tDebounce[index] = $.setTimeout callback, time