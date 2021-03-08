# setFixed(fixed?: boolean): void
$.setFixed = (isFixed = 'Toggle') ->

  if isFixed != 'Toggle'
    if isFixed then isFixed = 'On'
    else isFixed = 'Off'

  `Winset AlwaysOnTop, % isFixed, A`