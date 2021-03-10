# sort(list: unknown[]): unknown[]
$.sort = (list) ->

  unless $.isArray list
    throw new Error '$.sort: invalid type'

  $hasString = false
  for $item in list
    if ($.type $item) == 'string'
      $hasString = true
      break

  $string = $.join list, ','

  if $hasString
    `Sort, $string, C D,`
  else `Sort, $string, N D,`

  return $.split $string, ','