# isArray(ipt: unknown): ipt is unknown[]
$.isArray = (ipt) ->
  $type = $.type ipt
  unless $type == 'array' then return false
  return true