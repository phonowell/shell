# first(list: unknown[]): unknown
$.first = (list) ->

  unless $.isArray list
    throw new Error '$.first: invalid type'

  return list[0]