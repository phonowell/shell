# shuffle(list: unknown[]): unknown[]
$.shuffle = (list) ->

  $vt 'shuffle', list, 'array'

  $string = $.join list, ','
  `Sort, $string, Random D,`
  return $split $string, ','