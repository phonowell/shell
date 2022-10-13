# @ts-check

import $blockInput from '../../source/module/blockInput'
import $isFunction from '../../source/module/isFunction'

do ->

  unless $isFunction $blockInput
    throw 0