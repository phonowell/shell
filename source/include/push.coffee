# push<T>(list: T[], ...value: T[]): number
$.push = (list, args...) ->

  $type = $.type list
  unless $type == 'array'
    throw new Error "$.push: invalid type '#{$type}'"

  for $arg in args
    list.Push $arg

  return list.Length()