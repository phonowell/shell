# @ts-check

import $noop from './noop'

###* @type import('./play').Play ###
export default (filename) ->
  $noop filename
  Native 'SoundPlay, % filename'
  return