# @ts-check

import $exit from '../../source/module/exit'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $exit
    throw '$.exit is not a function'