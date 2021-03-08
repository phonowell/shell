# info(message: string, point?: Point): string
$.info = (message, point = '') ->

  unless message
    return message

  unless point
    point = $.getPosition()

  __msg__ = $.toString message
  `ToolTip, % __msg__, % point[1], % point[2]`
  return message