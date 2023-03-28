# @ts-check

import $isFunction from '../../source/module/isFunction'
import $isPressing from '../../source/module/isPressing'

do ->

  unless $isFunction $isPressing
    throw '$.isPressing is not a function'