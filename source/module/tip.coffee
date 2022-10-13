# @ts-check

import $getPosition from './getPosition'
import $noop from './noop'
import $toString from './toString'

# tip<T extends string>(message: T, p?: Point): T
###* @type {import('@/type/module').Tip} ###
export default (message, p = undefined) ->

  unless message then return message
  unless p then p = $getPosition()

  $msg = $toString message
  $noop $msg
  Native 'ToolTip, % $msg, % p[1], % p[2]'
  return message