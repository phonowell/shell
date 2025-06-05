# @ts-check

###* @type import('./suspend').Suspend ###
export default (isSuspended = 'Toggle') ->

  if isSuspended != 'Toggle'
    if isSuspended then isSuspended = 'On'
    else isSuspended = 'Off'

  Native 'Suspend, % isSuspended'
  return