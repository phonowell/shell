# @ts-check
# filter<T>(list: T[], callback: (item?: T, i?: number) => boolean): T[]
$.filter = (list, callback) ->

  $listResult = []

  for $item, $i in list
    unless callback $item, $i then continue
    $.push $listResult, $item

  return $listResult