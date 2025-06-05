# @ts-check

import $clearTimeout from '../src/clearTimeout'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $clearTimeout
    throw new Error '$.clearTimeout is not a function'