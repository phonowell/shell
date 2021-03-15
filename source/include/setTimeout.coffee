# setTimeout(callback: Function, time: number): string
$.setTimeout = (callback, time) ->

  $vt 'setTimeout', callback, 'function'
  $vt 'setTimeout', time, 'number'

  callback = $.bind callback

  unless $.isNumber time
    throw new Error '$.setTimeout: invalid type'

  if time <= 0 then time = 1

  `SetTimer, % callback, % 0 - time`
  return callback