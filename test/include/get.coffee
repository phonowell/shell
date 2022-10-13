# @ts-check

import $get from '../../source/module/get'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $get
    throw new Error '$.get is not a function'