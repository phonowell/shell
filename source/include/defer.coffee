# @ts-check

import $delay from './delay'

# defer(callback: Fn, ...args: unknown[]): Fn
###* @type {import('@/type/module').Defer} ###
export default (callback, args...) ->

  return $delay ->
    callback args...
  , 1