do ->

  unless $.isFunction $.press
    throw new Error '$.press is not a function'