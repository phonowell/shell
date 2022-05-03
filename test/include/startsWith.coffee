do ->

  string = 'string'

  result = $.startsWith string, 's'
  unless result then throw 1

  result = $.startsWith string, 't'
  if result then throw 2