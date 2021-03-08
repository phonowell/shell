# findImage(
#   source: string,
#   start: Point = [0, 0],
#   end: Point = [A_ScreenWidth, A_ScreenHeight],
# ): Point
$.findImage = (
  source
  start = '', end = ''
) ->

  unless start
    start = [0, 0]

  unless end
    end = [A_ScreenWidth, A_ScreenHeight]

  `ImageSearch __x__, __y__, start[1], start[2], end[1], end[2], % A_ScriptDir . "\\\" . source`
  return [__x__, __y__]