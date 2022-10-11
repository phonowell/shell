# @ts-check

import $noop from './noop'

# alert(message: string): void
###* @type {import('@/type/module').Alert} ###
export default (message) ->
  $noop message
  Native 'MsgBox, % message'
  return