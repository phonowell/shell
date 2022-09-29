do ->

  unless $.isFunction $.getState
    throw new Error '$.getState is not a function'