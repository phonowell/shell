# @ts-check

# suspend(isSuspended?: boolean): void
###* @type import('../type/module').Suspend} ###
export default (isSuspended = 'Toggle') ->

  if isSuspended != 'Toggle'
    if isSuspended then isSuspended = 'On'
    else isSuspended = 'Off'

  Native 'Suspend, % isSuspended'
  return