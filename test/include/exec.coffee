# @ts-check

import $exec from '../../source/module/exec'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $exec
    throw 0