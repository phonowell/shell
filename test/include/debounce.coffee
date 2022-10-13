# @ts-check

import $debounce from '../../source/module/debounce'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $debounce
    throw 0