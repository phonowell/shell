# toString(input: unknown): string
$.toString = (input) ->

  __type__ = $.type input

  if __type__ == 'array'
    __result__ = ''
    for key in input
      __result__ = "#{__result__}, #{$.toString key}"
    return "[#{$.trim __result__, ' ,'}]"

  else if __type__ == 'object'
    __result__ = ''
    for key, value of input
      __result__ = "#{__result__}, #{key}: #{$.toString value}"
    return "{#{$.trim __result__, ' ,'}}"

  return input