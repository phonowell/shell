# @ts-check

import $defer from '../src/defer'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $defer
    throw 0