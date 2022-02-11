# isArray(input: unknown): boolean
$.isArray = (input) ->
  $type = $.type input
  unless $type == 'array' then return false
  return true