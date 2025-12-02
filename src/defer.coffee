# @ts-check

import $delay from './delay'

###* @type import('./defer').Defer ###
export default (fn, args...) ->

  return $delay ->
    fn args...
  , 1