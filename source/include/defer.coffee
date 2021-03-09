# defer(callback: Function, ...args: unknown[]): string
$.defer = (callback, args...) ->

  unless $.isFunction callback
    throw new Error '$.defer: invalid type'

  return $.delay ->
    callback args...
  , 1