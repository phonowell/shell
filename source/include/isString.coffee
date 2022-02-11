# isString(input: unknown): boolean
$.isString = (input) ->
  $type = $.type input
  unless $type == 'string' then return false
  return true