# clone<T = unknown[] | {[x: string]: unknown}>(input: T): T
$.clone = (input) ->

  $type = $.type input

  if $type == 'array'
    return $.slice input

  if $type == 'object'
    $mapNew = {}
    for $key, $value of input
      $mapNew[$key] = $value
    return $mapNew

  throw new Error "$.clone: invalid type '#{$type}'"