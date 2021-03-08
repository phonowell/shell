# includes(input: string | array, needle: string): boolean
$.includes = (input, needle) ->

  __type__ = $.type input

  if __type__ == 'string' or __type__ == 'number'
    return (InStr input, needle) > 0

  if __type__ == 'array'
    for it in input
      if it == needle
        return true
    return false

  throw new Error "$.includes: invalid type '#{__type__}'"