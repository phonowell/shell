# push(list: unknown[], ...value: unknown[]): unknown[]
$.push = (list, args...) ->

  unless $.isArray list
    throw new Error '$.push: invalid type'

  for $arg in args
    list.Push $arg

  return list