# @ts-check

import $blockInput from '../src/blockInput'
import $isFunction from '../src/isFunction'

do ->

  unless $isFunction $blockInput
    throw 0