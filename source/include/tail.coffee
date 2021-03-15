# tail(list: unknown[]): unknown[]
$.tail = (list) ->
  $vt 'tail', list, 'array'
  return $.drop list, 1