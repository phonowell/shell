# info(message: string, p?: Point): string
$.info = (message, p = '') ->

  unless message
    return message

  unless p then p = $.getPosition()

  $msg = $.toString message
  `ToolTip, % $msg, % p[1], % p[2]`
  return message