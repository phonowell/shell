# delay(callback: Function, time: number, ...args: unknown[]): string
$.delay = (callback, time, args...) ->

  $vt 'delay', callback, 'function'
  $vt 'delay', time, 'number'

  $timer = $.setTimeout ->
    callback args...
  , time

  return $timer