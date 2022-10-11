# @ts-check

import $getPosition from './getPosition'

# getColor(point?: Point): number
###* @type {import('@/type/module').GetColor} ###
export default (p = [-1, -1]) ->

  unless (p[0] >= 0 and p[1] >= 0)
    p = $getPosition()

  $result = 0
  Native 'PixelGetColor, $result, % p[1], % p[2], RGB'
  return $result