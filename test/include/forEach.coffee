do ->

  list = [1, 2, 3]
  listA = []
  $.forEach list, (it, i) ->
    $.push listA, it
    $.push listA, i
  unless ($.join listA, '') == '102132'
    throw 0