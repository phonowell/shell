# @ts-check

import $get from '../../source/module/get'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $get
    throw '$.get is not a function'