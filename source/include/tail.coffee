# tail(list: unknown[]): unknown[]
$.tail = (list) ->

  unless $.isArray list
    throw new Error '$.tail: invalid type'

  return $.drop list, 1