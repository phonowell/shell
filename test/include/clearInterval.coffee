do ->

  unless $.isFunction $.clearInterval
    throw new Error '$.clearInterval is not a function'