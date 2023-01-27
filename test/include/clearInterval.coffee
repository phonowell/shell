# @ts-check

import $clearInterval from '../../source/module/clearInterval'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $clearInterval
    throw '$.clearInterval is not a function'