# close(target: string): void
$.close = (target) ->
  unless target then throw new Error '$.close: target is required'
  __target__ = "ahk_exe #{target}"
  `WinClose, % __target__`