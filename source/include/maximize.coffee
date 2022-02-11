# maximize(target: string): void
$.maximize = (target) ->
  unless target then throw new Error '$.maximize: target is required'
  __target__ = "ahk_exe #{target}"
  `WinMaximize, % __target__`