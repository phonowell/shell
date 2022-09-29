do ->

  unless $.isFunction $.getColor
    throw new Error '$.getColor is not a function'