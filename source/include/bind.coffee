# bind(callback: Function, ...args: unknown[]): Function
$.bind = (callback, args...) ->

  $vt 'bind', callback, 'function'

  unless callback.Name
    unless $.length args
      return callback
    throw new Error '$.bind: cannot bind a bound function'

  return callback.Bind args...