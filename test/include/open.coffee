do ->

  unless $.isFunction $.open
    throw '$.open is not a function'