# type Fn = () => unknown
# bind(callback: Fn, ...args: unknown[]): Fn
$.bind = (callback, args...) ->

  unless callback.Name
    unless $.length args
      return callback
    throw new Error '$.bind: cannot bind a bound function'

  return callback.Bind args...