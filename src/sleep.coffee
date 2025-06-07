# @ts-check

import $noop from './noop'

###* @type import('./sleep').Sleep ###
export default (time = 1e3) ->
  $noop time
  Native 'Sleep, % time'
  return