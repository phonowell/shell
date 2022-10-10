# @ts-check

import $join from './join'
import $map from './map'
import $toString from './toString'

###* alert(...message: unknown[]): void
# @param {unknown[]} message
# @returns {void}
###
export default (message...) ->
  $msg = $join ($map message, (msg) -> return $toString msg), ', '
  Native 'MsgBox, % $msg'