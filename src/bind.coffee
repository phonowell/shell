# @ts-check

import $length from './length'

###* @type import('./bind').Bind ###
export default (callback, args...) ->

  unless callback.Name
    unless $length args then return callback
    throw new Error '$.bind: cannot bind a bound function'

  return callback.Bind args...