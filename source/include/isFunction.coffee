# isFunction(ipt: unknown): boolean
$.isFunction = (ipt) ->
  $type = $.type ipt
  unless $type == 'function' then return false
  return true