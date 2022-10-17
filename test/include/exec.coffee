# @ts-check

import $exec from '../../source/module/exec'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $exec
    throw '$.exec is not a function'