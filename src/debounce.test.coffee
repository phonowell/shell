# @ts-check

import $debounce from '../src/debounce'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $debounce
    throw 0