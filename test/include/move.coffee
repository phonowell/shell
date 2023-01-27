# @ts-check

import $isFunction from '../../source/module/isFunction'
import $move from '../../source/module/move'

do ->

  unless $isFunction $move
    throw '$move is not a function'