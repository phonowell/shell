# @ts-check

###* @type import('../type/module').BlockInput ###
export default (isBlocked) ->

  if isBlocked
    Native 'BlockInput, On'
    return

  Native 'BlockInput, Off'
  return
