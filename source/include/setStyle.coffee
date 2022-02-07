# setStyle(target: string, style: string)
$.setStyle = (target, style) ->
  __target__ = "ahk_exe #{target}"
  `WinSet, Style, % style, % __target__`