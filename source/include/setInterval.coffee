# type Fn = () => unknown
# setInterval(callback: Fn, time: number): string
$.setInterval = (callback, time) ->

  callback = $.bind callback

  unless time > 0
    throw new Error '$.setInterval: invalid value'

  `SetTimer, % callback, % time`
  return callback