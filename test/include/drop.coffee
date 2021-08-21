do ->

  list = [1, 2, 3, 4, 5]

  listA = $.drop list
  result = $.join listA, ''
  unless result == '2345'
    throw result

  listB = $.drop list, 3
  result = $.join listB, ''
  unless result == '45'
    throw result