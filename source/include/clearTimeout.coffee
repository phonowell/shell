# type Fn = () => unknown
# clearTimeout(callback: Fn): void
$.clearTimeout = (callback) ->
  unless callback then return
  `SetTimer, % callback, Delete`