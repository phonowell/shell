# @ts-check

import $noop from './noop'

###* @type import('./open').Open ###
export default (source) ->
  $noop source
  Native 'Run, % source'
  return