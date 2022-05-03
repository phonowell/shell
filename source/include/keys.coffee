# keys(ipt: {[x: string]: unknown}): string[]
$.keys = (ipt) ->

  $listResult = []

  for $key, $value of ipt
    $.push $listResult, $key

  return $.sort $listResult