# clone(input: unknown[] | {[key: string]: unknown}): input: unknown[] | {[key: string]: unknown}
$.clone = (input) ->

  $type = $.type input

  if $type == 'array'
    $listNew = []
    for $item in input
      $.push $listNew, $item
    return $listNew

  if $type == 'object'
    $mapNew = {}
    for $key, $value of input
      $mapNew[$key] = $value
    return $mapNew

  throw new Error "$.clone: invalid type '#{$type}'"