# @ts-check

import $noop from './noop'

# move(p: Point, speed?: number): void
###* @type import('../type/module').Move} ###
export default (p = undefined, speed = 0) ->
  unless p then return
  $noop speed
  Native 'MouseMove, p[1], p[2], speed'
  return