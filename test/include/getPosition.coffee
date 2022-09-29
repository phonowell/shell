do ->

  unless $.isFunction $.getPosition
    throw new Error '$.getPosition is not a function'

  $.move [100, 100]
  [x, y] = $.getPosition()
  unless x == 100 and y == 100
    throw 0