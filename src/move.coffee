# @ts-check

import $noop from './noop'

###* @type import('./move').Move ###
export default (p = undefined, speed = 0) ->
  unless p then return
  $noop speed
  Native 'MouseMove, p[1], p[2], speed'
  return