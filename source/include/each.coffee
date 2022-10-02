# @ts-check
# each<T>(list: T[], callback: (item?: T, i?: number) => unknown): void
$.each = (list, callback) ->
  for $item, $i in list
    callback $item, $i