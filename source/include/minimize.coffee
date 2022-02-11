# minimize(target?: string): void
$.minimize = (target = '') ->
  unless target then throw new Error '$.minimize: target is required'
  __target__ = "ahk_exe #{target}"
  `WinMinimize, % __target__`