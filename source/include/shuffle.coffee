# @ts-check
# shuffle<T>(list: T[]): T[]
$.shuffle = (list) ->
  $string = $.join list, ','
  `Sort, $string, Random D,`
  return $split $string, ','