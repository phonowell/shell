# setInterval(callback: Function, time: number): string
$.setInterval = (callback, time) ->

  if $.isFunction callback
    callback = $.bind callback

  unless $.isNumber time
    throw new Error '$.setInterval: invalid type'
  unless time > 0
    throw new Error '$.setInterval: invalid value'

  `SetTimer, % callback, % time`
  return callback