# @ts-check
# unshift<T>(list: T[], ...value: T[]): number
$.unshift = (list, args...) ->

  $type = $.type list
  unless $type == 'array'
    throw new Error "$.unshift: invalid type '#{$type}'"

  list.InsertAt 1, args...

  return list.Length()