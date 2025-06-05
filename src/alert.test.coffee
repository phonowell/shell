# @ts-check

import $alert from '../src/alert'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $alert
    throw 0