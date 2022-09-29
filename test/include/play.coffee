do ->

  unless $.isFunction $.play
    throw new Error '$.play is not a function'