# @ts-check
# map<T, R>(list: T[], callback: (item: T, i?: number) => R): R[]
$.map = (list, callback) ->

  $listResult = []

  for $item, $i in list
    $.push $listResult, callback $item, $i

  return $listResult