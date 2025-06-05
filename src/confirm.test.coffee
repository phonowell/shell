# @ts-check

import $confirm from '../src/confirm'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $confirm
    throw 0