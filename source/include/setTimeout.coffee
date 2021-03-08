# setTimeout(callback: Function, time: number): string
$.setTimeout = (callback, time) ->

  if ($.type callback) == 'function'
    callback = callback.Bind()

  __type__ = $.type time
  unless __type__ == 'number'
    throw new Error "setTimeout: invalid time type '#{__type__}'"

  if time <= 0 then time = 1

  `SetTimer, % callback, % 0 - time`
  return callback