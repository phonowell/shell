# @ts-check

import $noop from './noop'

# move(p: Point, speed?: number): void
###* @type {import('@/type/module').Move} *###
export default (p = [-1, -1], speed = 0) ->
  unless p[0] >= 0 and p[1] >= 0 then return
  $noop speed
  Native 'MouseMove, point[1], point[2], speed'
  return