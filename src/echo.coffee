# @ts-check

import $now from './now'
import $tip from './tip'
import $toString from './toString'

###* @type import('./echo').Echo ###
export default (message) ->
  $tip "[#{$now()}] #{$toString message}", [0, 0]
  return message