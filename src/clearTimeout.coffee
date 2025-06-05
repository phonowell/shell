# @ts-check

###* @type import('./clearTimeout').ClearTimeout ###
export default (timer) ->
  unless timer then return
  Native 'setTimer, % timer, Delete'
  return