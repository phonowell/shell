# @ts-check
# type Fn = () => unknown
# delay(callback: Fn, time: number, ...args: unknown[]): string
$.delay = (callback, time, args...) ->

  $timer = $.setTimeout ->
    callback args...
  , time

  return $timer