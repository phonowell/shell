# @ts-check

import $noop from './noop'

# confirm(text: string, callback: (result: boolean) => unknown): void
###* @type {import('@/type/module').Confirm} ###
export default (text, callback) ->
  $noop text, callback
  Native 'MsgBox, 0x4,, % text'
  Native 'IfMsgBox Yes'
  Native '  callback.Call(true)'
  Native 'else'
  Native '  callback.Call(false)'
  return
