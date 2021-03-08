__index_debounce__ = 0
__timer_debounce__ = {}

# debounce(time: number, callback: Function): Function
$.debounce = (time, callback) ->

  __index_debounce__++

  return (index = __index_debounce__) ->
    $.clearTimeout __timer_debounce__[index]
    __timer_debounce__[index] = $.setTimeout callback, time