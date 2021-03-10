# shuffle(list: unknown[]): unknown[]
$.shuffle = (list) ->

  unless $.isArray list
    throw new Error '$.shuffle: invalid type'

  $string = $.join list, ','
  `Sort, $string, Random D,`
  return $split $string, ','