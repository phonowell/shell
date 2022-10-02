# @ts-check
# isString(ipt: unknown): boolean
$.isString = (ipt) ->
  $type = $.type ipt
  unless $type == 'string' then return false
  return true