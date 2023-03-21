# @ts-check

import $bind from './bind'
import $isNumber from './isNumber'

###* @type import('../type/module').SetTimeout ###
export default (callback, time) ->

  callback = $bind callback

  unless $isNumber time then throw '$.setTimeout: invalid type'

  if time < 1 then time = 1

  Native 'SetTimer, % callback, % 0 - time'
  return callback