# echo<T extends string>(message: T): T
$.echo = (message) ->
  $.tip "[#{$.now()}] #{$.toString message}", [0, 0]
  return message