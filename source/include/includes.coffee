# @ts-check
# includes(ipt: string | unknown[], needle: unknown): boolean
$.includes = (ipt, needle) ->

  $type = $.type ipt

  if $type == 'string' or $type == 'number'
    return (InStr ipt, needle) > 0

  if $type == 'array'
    for $it in ipt
      if $it == needle then return true
    return false

  throw new Error "$.includes: invalid type '#{$type}'"