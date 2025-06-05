# @ts-check

import $findImage from '../src/findImage'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $findImage
    throw 0