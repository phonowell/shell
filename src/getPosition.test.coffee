# @ts-check

import $getPosition from '../src/getPosition'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $getPosition
    throw new Error '$getPosition is not a function'