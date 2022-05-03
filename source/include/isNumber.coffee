# isNumber(ipt: unknown): boolean
$.isNumber = (ipt) ->
  $type = $.type ipt
  unless $type == 'number' then return false
  return true