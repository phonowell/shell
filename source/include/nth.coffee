# nth(list: unknown[], n = 0): unknown
$.nth = (list, n = 0) ->

  unless $.isArray list
    throw new Error '$.nth: invalid type'

  unless $.isNumber n
    throw new Error '$.nth: invalid type'

  if n >= 0
    return list[n]
  else return list[($.length list) + n]