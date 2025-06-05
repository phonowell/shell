# @ts-check

import $click from '../src/click'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $click
    throw new Error '$.click is not a function'