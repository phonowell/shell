# @ts-check

import $length from './length'

# bind(callback: Fn, ...args: unknown[]): Fn
###* @type import('../type/module').Bind ###
export default (callback, args...) ->

  unless callback.Name
    unless $length args then return callback
    throw '$.bind: cannot bind a bound function'

  return callback.Bind args...