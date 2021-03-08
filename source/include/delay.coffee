# delay(time: number, callback: Function): string
$.delay = (time, callback) ->

  __timer__ = $.setTimeout callback, time
  return __timer__