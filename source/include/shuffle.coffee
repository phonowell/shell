# shuffle(list: unknown[]): unknown[]
$.shuffle = (list) ->

  $validateType 'shuffle', list, 'array'

  $string = $.join list, ','
  `Sort, $string, Random D,`
  return $split $string, ','