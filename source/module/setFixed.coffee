# @ts-check

###* @type import('../type/module').SetFixed ###
export default (isFixed = 'Toggle') ->

  if isFixed != 'Toggle'
    if isFixed then isFixed = 'On'
    else isFixed = 'Off'

  Native 'Winset AlwaysOnTop, % isFixed, A'
  return