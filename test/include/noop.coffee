# @ts-check

import $isFunction from '../../source/module/isFunction'
import $noop from '../../source/module/noop'

do ->

  unless $isFunction $noop
    throw 0