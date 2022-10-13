# @ts-check

import $defer from '../../source/module/defer'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $defer
    throw 0