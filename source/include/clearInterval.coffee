# @ts-check

###* clearInterval(callback: Fn): void
# @param {Function} callback
# @returns {void}
###
export default (callback) ->
  unless callback then return
  Native 'SetTimer, % callback, Delete'