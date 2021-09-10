do ->

  list = [0, 1, 2, 3]

  n = $.nth list, 0
  unless n == 0 then throw n

  n = $.nth list, 1
  unless n == 1 then throw n

  n = $.nth list, -1
  unless n == 3 then throw n