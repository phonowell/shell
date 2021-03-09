# delay(time: number, callback: Function): string
$.delay = (time, callback) ->

  $timer = $.setTimeout callback, time
  return $timer