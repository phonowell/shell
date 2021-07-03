# map<T>(list: T[], callback: (item?: T, i?: number) => unknown): unknown[]
$.map = (list, callback) ->

  $listResult = []

  for $item, $i in list
    $.push $listResult, callback $item, $i

  return $listResult