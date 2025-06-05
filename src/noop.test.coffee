# @ts-check

import $isFunction from '../src/isFunction'
import $noop from '../src/noop'

do ->

  unless $isFunction $noop
    throw 0