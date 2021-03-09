# toString(input: unknown): string
$.toString = (input) ->

  $type = $.type input

  if $type == 'array'
    $result = ''
    for key in input
      $result = "#{$result}, #{$.toString key}"
    return "[#{$.trim $result, ' ,'}]"

  else if $type == 'object'
    $result = ''
    for key, value of input
      $result = "#{$result}, #{key}: #{$.toString value}"
    return "{#{$.trim $result, ' ,'}}"

  return input