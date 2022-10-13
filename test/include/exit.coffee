# @ts-check

import $exit from '../../source/module/exit'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $exit
    throw 0