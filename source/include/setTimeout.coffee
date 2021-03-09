# setTimeout(callback: Function, time: number): string
$.setTimeout = (callback, time) ->

  if ($.type callback) == 'function'
    callback = callback.Bind()

  $type = $.type time
  unless $type == 'number'
    throw new Error "setTimeout: invalid time type '#{$type}'"

  if time <= 0 then time = 1

  `SetTimer, % callback, % 0 - time`
  return callback