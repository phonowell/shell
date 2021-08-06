do ->

  list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  listA = $.chunk list, 4

  string = $.join ($.map listA, (it) -> return $.join it), ','

  unless string == '1234,5678,910'
    throw string