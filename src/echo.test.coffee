# @ts-check

import $echo from '../src/echo'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $echo
    throw new Error '$.echo is not a function'

  message = 'hello world'
  result = $echo message
  unless result == message
    throw new Error '$.echo did not return the expected value'