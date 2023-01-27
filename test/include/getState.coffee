# @ts-check

import $getState from '../../source/module/getState'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $getState
    throw '$.getState is not a function'