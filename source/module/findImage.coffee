# @ts-check

import $noop from './noop'

# findImage(
#   source: string,
#   start: Point = [0, 0],
#   end: Point = [A_ScreenWidth, A_ScreenHeight],
# ): Point
###* @type import('../type/module').FindImage ###
export default (source, start, end) ->

  unless start then start = [0, 0]
  unless end then end = [A_ScreenWidth, A_ScreenHeight]

  [$x, $y] = [0, 0]
  $noop source
  Native 'ImageSearch $x, $y, start[1], start[2], end[1], end[2], % A_ScriptDir . "\\\" . source'
  return [$x, $y]