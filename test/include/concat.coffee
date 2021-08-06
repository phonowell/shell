do ->

  listA = $.concat [1, 2, 3], 4, 5, [6, 7], 8, [9]
  unless ($.join listA) == '123456789'
    throw listA