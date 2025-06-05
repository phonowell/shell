# @ts-check

import $findColor from '../src/findColor'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $findColor
    throw 0