# type Fn = () => unknown
# defer(callback: Fn, ...args: unknown[]): string
$.defer = (callback, args...) ->

  return $.delay ->
    callback args...
  , 1