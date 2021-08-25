do ->

  map = {
    a: 1
    b: 2
    c: 3
  }

  result = $.join $.keys map
  unless result = 'a,b,c'
    throw 0