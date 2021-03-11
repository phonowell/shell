# first(list: unknown[]): unknown
$.first = (list) ->
  $validateType 'first', list, 'array'
  return list[0]

$.head = $.first