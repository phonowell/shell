# @ts-check

import $isFunction from '../../source/module/isFunction'
import $play from '../../source/module/play'

do ->

  unless $isFunction $play
    throw '$play is not a function'