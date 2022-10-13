# @ts-check

import $echo from '../../source/module/echo'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $echo
    throw '$.echo is not a function'

  message = 'hello world'
  result = $echo message
  unless result == message
    throw '$.echo did not return the expected value'