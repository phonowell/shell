# @ts-check

import $bind from '../src/bind'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $bind
    throw 0