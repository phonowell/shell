# @ts-check

import $click from '../../source/module/click'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $click
    throw new Error '$.click is not a function'