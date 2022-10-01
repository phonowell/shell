# isFunction(ipt: unknown): ipt is Function
$.isFunction = (ipt) ->
  $type = $.type ipt
  unless $type == 'function' then return false
  return true