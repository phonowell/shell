do ->

  result = $.gt 2, 1
  unless result then throw 0

  result = $.gt 1, 2
  if result then throw 1

  result = $.gt 1, 1
  if result then throw 2