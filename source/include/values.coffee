# values(input: {[key: string]: unknown}): unknown[]
$.values = (input) ->

  $vt 'values', input, 'object'

  $listResult = []

  for $key in $.keys input
    $.push $listResult, input[$key]

  return $listResult