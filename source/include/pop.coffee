# pop<T>(list: T[]): T
$.pop = (list) ->

  $type = $.type list
  unless $type == 'array'
    throw new Error "$.pop: invalid type '#{$type}'"

  return list.Pop()