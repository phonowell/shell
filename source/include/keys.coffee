# keys(input: {[x: string]: unknown}): string[]
$.keys = (input) ->

  $listResult = []

  for $key, $value of input
    $.push $listResult, $key

  return $.sort $listResult