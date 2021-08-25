do ->

  list = [1, 2, 3]

  result = $.join $.map list, (n) -> return n + 1
  unless result == '2,3,4'
    throw 0