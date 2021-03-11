# tail(list: unknown[]): unknown[]
$.tail = (list) ->
  $validateType 'tail', list, 'array'
  return $.drop list, 1