# type(input: unknown): 'array' | 'function' | 'number' | 'object' | 'string'
$.type = (input) ->

  `if input is Number`
  `  return "number"`

  if IsFunc input then return 'function'

  if IsObject input
    if input.Count() == input.Length()
      unless input.Length() >= 0 then return 'function'
      return 'array'
    return 'object'

  return 'string'