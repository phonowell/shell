# setInterval(callback: Fn, time: number): number
$.setInterval = (callback, time) ->

  callback = $.bind callback

  unless time > 0 then throw new Error '$.setInterval: invalid value'

  `SetTimer, % callback, % time`
  return callback