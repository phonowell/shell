# @ts-check

import $admin from '../../source/module/admin'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $admin
    throw '$.admin is not a function'