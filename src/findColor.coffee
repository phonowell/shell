# @ts-check

import $noop from './noop'

###* @type import('./findColor').FindColor ###
export default (color, start, end, variation = 0) ->

  unless start then start = [0, 0]
  unless end then end = [A_ScreenWidth, A_ScreenHeight]

  [$x, $y] = [0, 0]
  $noop color, variation
  Native 'PixelSearch $x, $y, start[1], start[2], end[1], end[2], color, variation, Fast RGB'
  return [$x, $y]