# uniq<T>(list: T[]): T[]
$.uniq = (list) ->

  $hasString = false
  for $item in list
    if ($.type $item) == 'string'
      $hasString = true
      break

  $string = $.join list, ','

  if $hasString
    `Sort, $string, C U D,`
  else `Sort, $string, N U D,`

  return $.split $string, ','