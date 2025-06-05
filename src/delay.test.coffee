# @ts-check

import $delay from '../src/delay'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $delay
    throw 0