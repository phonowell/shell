# @ts-check

import $now from './now'
import $tip from './tip'
import $toString from './toString'

# echo<T extends string>(message: T): T
###* @type import('../type/module').Echo ###
export default (message) ->
  $tip "[#{$now()}] #{$toString message}", [0, 0]
  return message