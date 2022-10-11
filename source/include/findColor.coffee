# @ts-check

import $noop from './noop'

# findColor(
#   color: number,
#   start: Point = [0, 0],
#   end: Point = [A_ScreenWidth, A_ScreenHeight],
#   variation = 0
# ): Point
###* @type {import('@/type/module').FindColor} ###
export default (
  color
  start = [-1, -1], end = [-1, -1]
  variation = 0
) ->

  unless (start[0] >= 0 and start[1] >= 0) then start = [0, 0]
  unless (end[0] >= 0 and end[1] >= 0)
    end = [A_ScreenWidth, A_ScreenHeight]

  [$x, $y] = [0, 0]
  $noop color, variation
  Native 'PixelSearch $x, $y, start[1], start[2], end[1], end[2], color, variation, Fast RGB'
  return [$x, $y]