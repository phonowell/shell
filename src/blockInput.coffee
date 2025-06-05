# @ts-check

###* @type import('./blockInput').BlockInput ###
export default (isBlocked) ->

  if isBlocked
    Native 'BlockInput, On'
    return

  Native 'BlockInput, Off'
  return
