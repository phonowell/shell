# @ts-check

import $isFunction from '../src/isFunction'
import $open from '../src/open'

do ->

  unless $isFunction $open
    throw new Error '$.open is not a function'