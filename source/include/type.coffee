# type(input: unknown): 'array' | 'function' | 'number' | 'object' | 'string'
$.type = (input) ->

  `if input is Number`
  `  return "number"`

  if IsFunc input
    return 'function'

  if IsObject input
    if input.Count() == input.Length()
      return 'array'
    return 'object'

  return 'string'