# @ts-check

import $isFunction from '../src/isFunction'
import $isPressing from '../src/isPressing'

do ->

  unless $isFunction $isPressing
    throw new Error '$.isPressing is not a function'