# @ts-check

import $clearInterval from '../src/clearInterval'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $clearInterval
    throw new Error '$.clearInterval is not a function'