# keys(ipt: {[x: string]: unknown}): string[]
$.keys = (ipt) ->

  $type = $.type ipt
  unless $type == 'object'
    throw new Error "$.keys: invalid type '#{$type}'"

  $listResult = []

  for $key, $value of ipt
    $listResult.Push $key

  return $.sort $listResult