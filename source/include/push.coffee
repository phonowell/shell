# push<T>(list: T[], ...value: T[]): T[]
$.push = (list, args...) ->

  for $arg in args
    list.Push $arg

  return list