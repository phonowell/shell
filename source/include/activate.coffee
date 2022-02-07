# activate(target: string): void
$.activate = (target) ->
  __target__ = "ahk_exe #{target}"
  `WinActivate, % __target__`