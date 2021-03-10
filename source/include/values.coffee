# values(input: {[key: string]: unknown}): unknown[]
$.values = (input) ->

  unless $.isObject input
    throw new Error '$.values: invalid type'

  $listResult = []

  for $key in $.keys input
    $.push $listResult, input[$key]

  return $listResult