# @ts-check

import $isFunction from '../src/isFunction'
import $move from '../src/move'

do ->

  unless $isFunction $move
    throw new Error '$move is not a function'