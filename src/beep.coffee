# @ts-check

###* @type import('./beep').Beep ###
export default () ->
  Native 'SoundBeep'
  return