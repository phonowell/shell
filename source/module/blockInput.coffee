# @ts-check

###* @type import('../type/module').BlockInput ###
export default (block) ->

  if block
    Native 'BlockInput, On'
    return

  Native 'BlockInput, Off'
  return