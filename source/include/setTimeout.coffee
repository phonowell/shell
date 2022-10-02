# @ts-check
# setTimeout(callback: Fn, time: number): number
$.setTimeout = (callback, time) ->

  callback = $.bind callback

  unless $.isNumber time then throw new Error '$.setTimeout: invalid type'

  if time < 1 then time = 1

  `SetTimer, % callback, % 0 - time`
  return callback