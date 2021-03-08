# clearInterval(callback: Function): void
$.clearInterval = (callback) ->
  unless callback then return
  `SetTimer, % callback, Delete`