# nth(list: unknown[], n = 0): unknown
$.nth = (list, n = 0) ->

  $vt 'nth', list, 'array'
  $vt 'nth', n, 'number'

  if n >= 0
    return list[n]
  else return list[($.length list) + n]