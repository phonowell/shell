# @ts-check

import $noop from './noop'

###* @type import('./alert').Alert ###
export default (message) ->
  $noop message
  Native 'MsgBox, % message'
  return