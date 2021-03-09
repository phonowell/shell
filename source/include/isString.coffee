# isString(input: unknown): boolean
$.isString = (input) ->
  $type = $.type input
  unless $type == 'string'
    return false
  return true