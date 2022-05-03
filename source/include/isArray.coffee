# isArray(ipt: unknown): boolean
$.isArray = (ipt) ->
  $type = $.type ipt
  unless $type == 'array' then return false
  return true