# @ts-check
# getColor(point?: Point): number
$.getColor = (p = '') ->

  unless p then p = $.getPosition()

  `PixelGetColor, __result__, % p[1], % p[2], RGB`
  return `__result__`