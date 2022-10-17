# @ts-check

# blockInput(block: boolean): void
###* @type import('../type/module').BlockInput ###
export default (block) ->

  if block
    Native 'BlockInput, On'
    return

  Native 'BlockInput, Off'
  return