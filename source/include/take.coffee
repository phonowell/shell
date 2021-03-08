# take(list: unknown[], count: number = 1): unknown[]
$.take = (list, count = 1) ->

  __len__ = $.length list
  unless __len__
    return []

  unless count >= 0
    return []

  if count >= __len__
    count = __len__

  __listNew__ = []
  for __item__, __i__ in list
    if __i__ >= count + 1
      break
    $.push __listNew__, __item__

  return __listNew__