# @ts-check

###* clearTimeout(callback: Fn): void
# @param {Function} callback
# @returns {void}
###
export default (callback) ->
  unless callback then return
  Native 'setTimer, % callback, Delete'
  return