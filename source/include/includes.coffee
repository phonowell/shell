# includes(input: string | array, needle: string): boolean
$.includes = (input, needle) ->

  $type = $.type input

  if $type == 'string' or $type == 'number'
    return (InStr input, needle) > 0

  if $type == 'array'
    for $it in input
      if $it == needle
        return true
    return false

  throw new Error "$.includes: invalid type '#{$type}'"