do ->

  list = [
    0, 1
    false, true
    '', 'x'
  ]
  listA = $.compact list
  unless ($.join listA, '') == '11x'
    throw listA