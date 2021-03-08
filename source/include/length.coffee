# length(input: string | array | object): number
$.length = (input) ->

  __type__ = $.type input

  switch __type__
    when 'array' then return input.Length()
    when 'object' then return input.Count()
    when 'string' then return StrLen input
    else throw new Error "$.length: invalid type '#{__type__}'"