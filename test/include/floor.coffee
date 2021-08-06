do ->

  n = 1.2
  result = $.floor n
  unless result == 1
    throw result

  n = -1.2
  result = $.floor n
  unless result == -2
    throw result