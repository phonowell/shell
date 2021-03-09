# isFunction(input: unknown): boolean
$.isFunction = (input) ->
  $type = $.type input
  unless $type == 'function'
    return false
  return true