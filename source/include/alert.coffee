# alert(message: string): string
$.alert = (message = '') ->
  __msg__ = $.toString message
  `MsgBox, % __msg__`
  return message