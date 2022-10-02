# @ts-check
# alert(...message: unknown[]): void
$.alert = (message...) ->
  $msg = $.join ($.map message, (msg) -> return $.toString msg), ', '
  `MsgBox, % $msg`