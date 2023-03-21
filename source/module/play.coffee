# @ts-check

import $noop from './noop'

###* @type import('../type/module').Play ###
export default (filename) ->
  $noop filename
  Native 'SoundPlay, % filename'
  return