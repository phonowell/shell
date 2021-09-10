do ->

  list = [0]

  $.push list, 1
  unless list[1] == 1 then throw 0

  $.push list, 2, 3, 4
  unless list[2] == 2 then throw 1
  unless list[4] == 4 then throw 4