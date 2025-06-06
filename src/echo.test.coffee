# @ts-check

import $echo from '../dist/echo'
import $isFunction from '../dist/isFunction'

unless $isFunction $echo
  throw new Error 'echo should be a function'

message = 'hello world'
result = $echo message
unless result == message
  throw new Error 'echo did not return the expected message'