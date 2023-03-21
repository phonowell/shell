# @ts-check

import $bind from './bind'

###* @type import('../type/module').SetInterval ###
export default (callback, time) ->

  callback = $bind callback

  unless time > 0 then throw '$.setInterval: invalid value'

  Native 'SetTimer, % callback, % time'
  return callback