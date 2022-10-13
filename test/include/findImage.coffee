# @ts-check

import $findImage from '../../source/module/findImage'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $findImage
    throw 0