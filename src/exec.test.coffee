# @ts-check

import $exec from '../src/exec'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $exec
    throw new Error '$.exec is not a function'