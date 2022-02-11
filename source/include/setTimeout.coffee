# type Fn = () => unknown
# setTimeout(callback: Fn, time: number): string
$.setTimeout = (callback, time) ->

  callback = $.bind callback

  unless $.isNumber time then throw new Error '$.setTimeout: invalid type'

  if time <= 0 then time = 1

  `SetTimer, % callback, % 0 - time`
  return callback