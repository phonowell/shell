# values<T>(input: {[x: string]: T}): T[]
$.values = (input) ->

  $listResult = []

  for $key in $.keys input
    $.push $listResult, input[$key]

  return $listResult