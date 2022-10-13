# @ts-check

import $getPosition from './getPosition'

# getColor(point?: Point): number
###* @type {import('@/type/module').GetColor} ###
export default (p = undefined) ->

  unless p then p = $getPosition()

  $result = 0
  Native 'PixelGetColor, $result, % p[1], % p[2], RGB'
  return $result