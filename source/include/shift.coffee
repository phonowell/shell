# @ts-check
# shift<T>(list: T[]): T
$.shift = (list) ->

  $type = $.type list
  unless $type == 'array'
    throw new Error "$.shift: invalid type '#{$type}'"

  $first = list[0]
  list.RemoveAt 1

  return $first