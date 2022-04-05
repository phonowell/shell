# forEach<T>(list: T[], callback: (item?: T, i?: number) => void): void
$.forEach = (list, callback) ->
  for $item, $i in list
    callback $item, $i