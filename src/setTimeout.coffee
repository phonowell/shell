# @ts-check

import $bind from './bind'
import $isNumber from './isNumber'

###* @type import('./setTimeout').SetTimeout ###
export default (callback, time) ->

  callback = $bind callback

  unless $isNumber time then throw new Error '$.setTimeout: invalid type'

  if time < 1 then time = 1

  Native 'SetTimer, % callback, % 0 - time'
  return callback