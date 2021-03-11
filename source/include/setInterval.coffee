# setInterval(callback: Function, time: number): string
$.setInterval = (callback, time) ->

  $validateType 'setInterval', callback, 'function'
  $validateType 'setInterval', time, 'number'

  callback = $.bind callback

  unless time > 0
    throw new Error '$.setInterval: invalid value'

  `SetTimer, % callback, % time`
  return callback