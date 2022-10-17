# @ts-check

# clearTimeout(callback: Fn): void
###* @type import('../type/module').ClearTimeout ###
export default (callback) ->
  unless callback then return
  Native 'setTimer, % callback, Delete'
  return