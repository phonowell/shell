# tip<T extends string>(message: T, p?: Point): T
$.tip = (message, p = '') ->

  unless message then return message
  unless p then p = $.getPosition()

  $msg = $.toString message
  `ToolTip, % $msg, % p[1], % p[2]`
  return message