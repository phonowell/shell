# isArray(input: unknown): boolean
$.isArray = (input) ->
  $type = $.type input
  unless $type == 'array'
    return false
  return true