# isObject(input: unknown): boolean
$.isObject = (input) ->
  $type = $.type input
  unless $type == 'object' then return false
  return true