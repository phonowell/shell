# random(min: number = 0, max: number = 1): number
$.random = (min = 0, max = 1) ->

  $vt 'random', min, 'number'
  $vt 'random', max, 'number'

  `Random, __result__, min, max`
  return __result__