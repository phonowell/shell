# suspend(suspended?: boolean): void
$.suspend = (isSuspended = 'Toggle') ->

  if isSuspended != 'Toggle'
    if isSuspended then isSuspended = 'On'
    else isSuspended = 'Off'

  `Suspend, % isSuspended`