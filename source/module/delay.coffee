# @ts-check

import $setTimeout from './setTimeout'

# delay(callback: Fn, time: number, ...args: unknown[]): Fn
###* @type import('../type/module').Delay ###
export default (callback, time, args...) ->

  $timer = $setTimeout ->
    callback args...
  , time

  return $timer