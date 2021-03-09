# last(list: unknown[]): unknown
$.last = (list) ->

  unless $.isArray list
    throw new Error '$.last: invalid type'

  return list[($.length list) - 1]