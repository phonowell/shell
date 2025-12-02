# @ts-check

import $isString from './isString'
import $join from './join'
import $noop from './noop'

###* @type import('./exec').Exec ###
export default (cmd, callback = $noop) ->

  if $isString cmd then cmd = [cmd]
  cmd = $join cmd, ' && '

  Native 'RunWait, %comSpec% /c %cmd%,, Hide UseErrorLevel'

  callback ErrorLevel