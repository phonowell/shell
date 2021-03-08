# clearTimeout(callback: Function): void
$.clearTimeout = (callback) ->
  unless callback then return
  `SetTimer, % callback, Delete`