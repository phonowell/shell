# @ts-check

import $getPosition from '../../source/module/getPosition'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $getPosition
    throw '$getPosition is not a function'