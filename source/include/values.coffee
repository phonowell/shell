# values(input: {[key: string]: unknown}): unknown[]
$.values = (input) ->

  $validateType 'values', input, 'object'

  $listResult = []

  for $key in $.keys input
    $.push $listResult, input[$key]

  return $listResult