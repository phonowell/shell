# type Fn = () => unknown
# clearInterval(callback: Fn): void
$.clearInterval = (callback) ->
  unless callback then return
  `SetTimer, % callback, Delete`