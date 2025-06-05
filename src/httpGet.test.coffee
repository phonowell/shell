# @ts-check

import $httpGet from '../src/httpGet'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $httpGet
    throw new Error '$.get is not a function'