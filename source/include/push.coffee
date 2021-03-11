# push(list: unknown[], ...value: unknown[]): unknown[]
$.push = (list, args...) ->

  $validateType 'push', list, 'array'

  for $arg in args
    list.Push $arg

  return list