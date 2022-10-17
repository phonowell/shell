# @ts-check

import $noop from './noop'

# play(filename: string): void
###* @type import('../type/module').Play} *###
export default (filename) ->
  $noop filename
  Native 'SoundPlay, % filename'
  return