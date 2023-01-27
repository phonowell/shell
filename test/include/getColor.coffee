# @ts-check

import $getColor from '../../source/module/getColor'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $getColor
    throw '$.getColor is not a function'