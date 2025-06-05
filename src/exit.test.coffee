# @ts-check

import $exit from '../src/exit'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $exit
    throw new Error '$.exit is not a function'