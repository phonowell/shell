# @ts-check

import $getState from '../../source/module/getState'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $getState
    throw new Error '$.getState is not a function'