# i(message: string): string
$.i = (message) ->
  $.info "[#{$.now()}] #{$.toString message}", [0, 0]
  return message