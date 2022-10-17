# @ts-check

# beep(): void
###* @type import('../type/module').Beep ###
export default ->
  Native 'SoundBeep'
  return