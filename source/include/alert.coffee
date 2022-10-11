# @ts-check

###* alert(message: string): void
# @param {string} message
# @returns {void}
###
export default (message) ->
  Native 'MsgBox, % message'
  return