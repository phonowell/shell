# @ts-check

import $isFunction from '../src/isFunction'
import $press from '../src/press'

do ->

  unless $isFunction $press
    throw new Error '$press is not a function'