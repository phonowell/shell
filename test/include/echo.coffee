do ->

  unless $.isFunction $.echo
    throw '$.echo is not a function'

  message = 'hello world'
  result = $.echo message
  unless result == message
    throw '$.echo did not return the expected value'