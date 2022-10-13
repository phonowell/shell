# @ts-check

import $isFunction from '../../source/module/isFunction'
import $open from '../../source/module/open'

do ->

  unless $isFunction $open
    throw '$.open is not a function'