# toString(ipt: unknown): string
$.toString = (ipt) ->

  $type = $.type ipt

  if $type == 'array'
    $result = ''
    for key in ipt
      $result = "#{$result}, #{$.toString key}"
    return "[#{$.trim $result, ' ,'}]"

  else if $type == 'object'
    $result = ''
    for key, value of ipt
      $result = "#{$result}, #{key}: #{$.toString value}"
    return "{#{$.trim $result, ' ,'}}"

  return ipt