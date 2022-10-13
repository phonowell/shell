# @ts-check

import $confirm from '../../source/module/confirm'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $confirm
    throw 0