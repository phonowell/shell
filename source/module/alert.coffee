# @ts-check

import $noop from './noop'

###* @type import('../type/module').Alert ###
export default (message) ->
  $noop message
  Native 'MsgBox, % message'
  return