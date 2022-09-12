do ->

  list = [0]

  $.unshift list, 1
  unless list[0] == 1 then throw 0

  len = $.unshift list, 2, 3, 4
  unless len == 5 then throw 1
  unless list[0] == 2 then throw 2
  unless list[3] == 1 then throw 3