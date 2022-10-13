# @ts-check

import $bind from '../../source/module/bind'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $bind
    throw 0