# @ts-check
# isNumber(ipt: unknown): ipt is number
$.isNumber = (ipt) ->
  $type = $.type ipt
  unless $type == 'number' then return false
  return true