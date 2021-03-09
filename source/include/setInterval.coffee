# setInterval(callback: Function, time: number): string
$.setInterval = (callback, time) ->

  if ($.type callback) == 'function'
    callback = callback.Bind()

  $type = $.type time
  unless $type == 'number'
    throw new Error "setTimeout: invalid time type '#{$type}'"
  unless time > 0
    throw new Error "setTimeout: invalid time value '#{time}'"

  `SetTimer, % callback, % time`
  return callback