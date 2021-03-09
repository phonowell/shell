# delay(callback: Function, time: number, ...args: unknown[]): string
$.delay = (callback, time, args...) ->

  unless $.isFunction callback
    throw new Error '$.delay: invalid type'

  unless $.isNumber time
    throw new Error '$.delay: invalid type'

  $timer = $.setTimeout ->
    callback args...
  , time

  return $timer