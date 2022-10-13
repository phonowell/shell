# @ts-check

# clearInterval(callback: Fn): void
###* @type {import('../type/module').ClearInterval} ###
export default (callback) ->
  unless callback then return
  Native 'SetTimer, % callback, Delete'
  return