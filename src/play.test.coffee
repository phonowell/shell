# @ts-check

import $isFunction from '../src/isFunction'
import $play from '../src/play'

do ->

  unless $isFunction $play
    throw new Error '$play is not a function'