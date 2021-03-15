# defer(callback: Function, ...args: unknown[]): string
$.defer = (callback, args...) ->

  $vt 'defer', callback, 'function'

  return $.delay ->
    callback args...
  , 1