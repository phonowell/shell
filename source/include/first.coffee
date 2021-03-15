# first(list: unknown[]): unknown
$.first = (list) ->
  $vt 'first', list, 'array'
  return list[0]

$.head = $.first