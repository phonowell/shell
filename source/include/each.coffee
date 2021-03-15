# each(list: unknown[], callback: Function): void
$.each = (list, callback) ->

  $vt 'each', list, 'array'
  $vt 'each', callback, 'function'

  for $item, $i in list
    callback $item, $i