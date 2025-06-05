# @ts-check

###* @type import('./clearInterval').ClearInterval ###
export default (timer) ->
  unless timer then return
  Native 'SetTimer, % timer, Delete'
  return