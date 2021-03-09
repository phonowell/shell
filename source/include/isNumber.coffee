# isNumber(input: unknown): boolean
$.isNumber = (input) ->
  $type = $.type input
  unless $type == 'number'
    return false
  return true