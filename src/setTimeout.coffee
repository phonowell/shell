# @ts-check

import $isNumber from './isNumber'

###* @type import('./setTimeout').SetTimeout ###
export default (callback, time) ->

  unless $isNumber time
    throw new Error 'setTimeout requires a number as the second argument'

  if time < 1 then time = 1

  Native 'SetTimer, % callback, % 0 - time'
  return callback