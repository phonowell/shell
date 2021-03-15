# keys(input: {[key: string]: unknown}): string[]
$.keys = (input) ->

  $vt 'keys', input, 'object'

  $listResult = []

  for $key, $value of input
    $.push $listResult, $key

  return $.sort $listResult