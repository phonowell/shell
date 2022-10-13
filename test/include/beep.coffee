# @ts-check

import $beep from '../../source/module/beep'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $beep
    throw 0