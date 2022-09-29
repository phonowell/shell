do ->

  unless $.isFunction $.tip
    throw '$.tip is not a function'

  message = 'hello world'
  result = $.tip message
  unless result == message
    throw '$.tip did not return the expected value'