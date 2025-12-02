# @ts-check

import $setTimeout from './setTimeout'

###* @type import('./delay').Delay ###
export default (fn, wait, args...) ->

  $timer = $setTimeout ->
    fn args...
  , wait

  return $timer