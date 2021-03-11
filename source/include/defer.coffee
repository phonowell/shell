# defer(callback: Function, ...args: unknown[]): string
$.defer = (callback, args...) ->

  $validateType 'defer', callback, 'function'

  return $.delay ->
    callback args...
  , 1