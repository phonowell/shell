# @ts-check

import $getColor from '../src/getColor'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $getColor
    throw new Error '$.getColor is not a function'