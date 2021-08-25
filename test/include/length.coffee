do -> # array

  list = [1, 2, 3]

  n = $.length list
  unless n == 3
    throw 1

do -> # object

  map = {
    a: 1
    b: 2
    c: 3
  }

  n = $.length map
  unless n == 3
    throw 2

do -> # string

  string = 'wow'

  n = $.length string
  unless n == 3
    throw 3