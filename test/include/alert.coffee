# @ts-check

import $alert from '../../source/module/alert'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $alert
    throw 0