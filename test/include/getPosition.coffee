do ->

  unless ($.type $.getPosition) == 'function'
    throw 0

  $.move [100, 100]
  [x, y] = $.getPosition()
  unless x == 100 and y == 100
    throw 0