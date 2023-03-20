# @ts-check

import $httpGet from '../../source/module/httpGet'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $httpGet
    throw '$.get is not a function'