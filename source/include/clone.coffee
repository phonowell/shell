# @ts-check
# clone<T = unknown[] | {[x: string]: unknown}>(ipt: T): T
$.clone = (ipt) ->

  $type = $.type ipt

  if $type == 'array' then return $.slice ipt

  if $type == 'object'
    $mapNew = {}
    for $key, $value of ipt
      $mapNew[$key] = $value
    return $mapNew

  throw new Error "$.clone: invalid type '#{$type}'"