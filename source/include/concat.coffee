# @ts-check
# concat<T>(list: T[], ...value: (T | T[])[]): T[]
$.concat = (list, args...) ->

  $listNew = $.clone list

  for $arg in args
    $type = $.type $arg

    if $type == 'array'
      for $item in $arg
        $.push $listNew, $item
    else $.push $listNew, $arg

  return $listNew