# isFunction(input: unknown): boolean
$.isFunction = (input) ->
  $type = $.type input
  unless $type == 'function' then return false
  return true