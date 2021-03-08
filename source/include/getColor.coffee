# getColor(point?: Point): number
$.getColor = (point = '') ->

  unless point
    point = $.getPosition()

  `PixelGetColor, __result__, % point[1], % point[2], RGB`
  return __result__