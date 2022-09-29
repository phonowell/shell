do ->

  unless $.isFunction $.clearTimeout
    throw new Error '$.clearTimeout is not a function'