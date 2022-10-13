# @ts-check

import $isFunction from '../../source/module/isFunction'
import $press from '../../source/module/press'

do ->

  unless $isFunction $press
    throw new Error '$press is not a function'