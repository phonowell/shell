# keys(input: {[key: string]: unknown}): string[]
$.keys = (input) ->

  unless $.isObject input
    throw new Error '$.keys: invalid type'

  $listResult = []

  for $key, $value of input
    $.push $listResult, $key

  return $.sort $listResult