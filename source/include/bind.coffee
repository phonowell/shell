# @ts-check

import $length from './length'

###* bind(callback: Fn, ...args: unknown[]): Fn
# @param {(...args: unknown[]) => unknown} callback
# @param {unknown[]} args
# @returns {(...args: unknown[]) => unknown}
###
export default (callback, args...) ->

  unless callback.Name
    unless $length args then return callback
    throw new Error '$.bind: cannot bind a bound function'

  return callback.Bind args...