# @ts-check

###* @type import('./setFixed').SetFixed ###
export default (isFixed = 'Toggle') ->

  if isFixed != 'Toggle'
    if isFixed then isFixed = 'On'
    else isFixed = 'Off'

  Native 'Winset AlwaysOnTop, % isFixed, A'
  return