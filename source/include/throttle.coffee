__index_throttle__ = 0
__timer_throttle__ = {}
__ts_throttle__ = {}

# throttle(time: number, callback: Function): Function
$.throttle = (time, callback) ->

  __index_throttle__++
  __ts_throttle__[__index_throttle__] = 0

  return (index = __index_throttle__) ->
    $.clearTimeout __timer_throttle__[index]
    __timer_throttle__[index] = $.setTimeout ->
      callback()
      __ts_throttle__[index] = $.now()
    , __ts_throttle__[index] - $.now() + time

