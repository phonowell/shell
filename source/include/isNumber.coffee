# isNumber(input: unknown): boolean
$.isNumber = (input) ->
  $type = $.type input
  unless $type == 'number' then return false
  return true