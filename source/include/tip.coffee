# @ts-check

import $getPosition from './getPosition'
import $noop from './noop'
import $toString from './toString'

# tip<T extends string>(message: T, p?: Point): T
###* @type {import('@/type/module').Tip} ###
export default (message, p = [-1, -1]) ->

  unless message then return message
  unless p[0] >= 0 and p[1] >= 0 then p = $getPosition()

  $msg = $toString message
  $noop $msg
  Native 'ToolTip, % $msg, % p[1], % p[2]'
  return message