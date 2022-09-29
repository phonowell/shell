do ->

  unless $.isFunction $.get
    throw new Error '$.get is not a function'