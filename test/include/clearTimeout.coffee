# @ts-check

import $clearTimeout from '../../source/module/clearTimeout'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $clearTimeout
    throw new Error '$.clearTimeout is not a function'