# values<T>(ipt: {[x: string]: T}): T[]
$.values = (ipt) ->

  $listResult = []

  for $key in $.keys ipt
    $.push $listResult, ipt[$key]

  return $listResult