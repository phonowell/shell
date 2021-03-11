# delay(callback: Function, time: number, ...args: unknown[]): string
$.delay = (callback, time, args...) ->

  $validateType 'delay', callback, 'function'
  $validateType 'delay', time, 'number'

  $timer = $.setTimeout ->
    callback args...
  , time

  return $timer