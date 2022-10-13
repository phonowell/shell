# @ts-check

import $bind from './bind'

# setInterval(callback: Fn, time: number): number
###* @type {import('@/type/module').SetInterval} *###
export default (callback, time) ->

  callback = $bind callback

  unless time > 0 then throw new Error '$.setInterval: invalid value'

  Native 'SetTimer, % callback, % time'
  return callback