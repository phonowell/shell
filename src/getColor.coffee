# @ts-check

import $getPosition from './getPosition'

###* @type import('./getPosition').GetPosition ###
export default (p = undefined) ->

  unless p then p = $getPosition()

  $result = 0
  Native 'PixelGetColor, $result, % p[1], % p[2], RGB'
  return $result