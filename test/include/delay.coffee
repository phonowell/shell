# @ts-check

import $delay from '../../source/module/delay'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $delay
    throw 0