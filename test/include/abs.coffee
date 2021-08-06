do ->

  n = 42
  result = $.abs n
  unless result == 42
    throw result

  n = -42
  result = $.abs n
  unless result == 42
    throw result