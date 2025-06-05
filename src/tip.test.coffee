# @ts-check

import $isFunction from '../src/isFunction'
import $tip from '../src/tip'

do ->

  unless $isFunction $tip
    throw new Error '$.tip is not a function'

  message = 'hello world'
  result = $tip message
  unless result == message
    throw new Error "$.tip did not return the expected value: #{result}"