# alert(message: string): string
$.alert = (message = '') ->
  $msg = $.toString message
  `MsgBox, % $msg`
  return message