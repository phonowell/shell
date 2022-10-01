# length(ipt: string | unknonw[] | object): number
$.length = (ipt) ->

  $type = $.type ipt

  switch $type
    when 'array' then return ipt.Length()
    when 'object' then return ipt.Count()
    when 'string' then return StrLen ipt
    else throw new Error "$.length: invalid type '#{$type}'"