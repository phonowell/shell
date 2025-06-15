# @ts-check

import $getPosition from './getPosition'
import $noop from './noop'
import $toString from './toString'

###* @type import('./tip').Tip ###
export default (message, p = undefined) ->

  unless message then return message
  unless p then p = do ->
    a = $getPosition()
    return [
      a[0] + 1,
      a[1] + 1
    ]

  $msg = $toString message
  $noop $msg
  Native 'ToolTip, % $msg, % p[1], % p[2]'
  return message