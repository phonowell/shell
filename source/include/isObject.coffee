# isObject(ipt: unknown): boolean
$.isObject = (ipt) ->
  $type = $.type ipt
  unless $type == 'object' then return false
  return true