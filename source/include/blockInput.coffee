# @ts-check

###* blockInput(block: boolean): void
# @param {boolean} block
# @returns {void}
###
export default (block) ->

  if block
    Native 'BlockInput, On'
    return

  Native 'BlockInput, Off'