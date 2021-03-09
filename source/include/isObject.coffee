# isObject(input: unknown): boolean
$.isObject = (input) ->
  $type = $.type input
  unless $type == 'object'
    return false
  return true