# @ts-check

import $findColor from '../../source/module/findColor'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $findColor
    throw 0