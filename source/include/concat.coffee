# concat(list: unknown[], ...value: (unknown | unknown[])[]): unknown[]
$.concat = (list, args...) ->

  unless $.isArray list
    throw new Error '$.concat: invalid type'

  $listNew = $.clone list

  for $arg in args
    $type = $.type $arg

    if $type == 'array'
      for $item in $arg
        $.push $listNew, $item
    else
      $.push $listNew, $arg

  return $listNew