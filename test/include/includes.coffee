do -> # string

  string = 'string'

  result = $.includes string, 's'
  unless result then throw 1

  result = $.includes string, 'a'
  if result then throw 2

do -> # array

  list = [1, 2, 3]

  result = $.includes list, 1
  unless result then throw 3

  result = $.includes list, 4
  if result then throw 4