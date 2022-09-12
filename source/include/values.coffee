# values<T>(ipt: {[x: string]: T}): T[]
$.values = (ipt) ->

  $type = $.type ipt
  unless $type == 'object'
    throw new Error "$.values: invalid type '#{$type}'"

  $listResult = []

  for $key in $.keys ipt
    $listResult.Push ipt[$key]

  return $listResult