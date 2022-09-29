do ->

  unless $.isFunction $.click
    throw new Error '$.click is not a function'