# setInterval(callback: Function, time: number): string
$.setInterval = (callback, time) ->

  if ($.type callback) == 'function'
    callback = callback.Bind()

  __type__ = $.type time
  unless __type__ == 'number'
    throw new Error "setTimeout: invalid time type '#{__type__}'"
  unless time > 0
    throw new Error "setTimeout: invalid time value '#{time}'"

  `SetTimer, % callback, % time`
  return callback