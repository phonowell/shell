# activate(target: string): void
$.activate = (target) ->
  unless target then throw new Error '$.activate: target is required'
  __target__ = "ahk_exe #{target}"
  `WinActivate, % __target__`