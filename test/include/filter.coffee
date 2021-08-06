do ->

  list = [1, 2, 3]
  listA = $.filter list, (it) -> return it != 2
  unless ($.join listA) == '13'
    throw 0