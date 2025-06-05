# @ts-check

import $beep from '../src/beep'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $beep
    throw 0