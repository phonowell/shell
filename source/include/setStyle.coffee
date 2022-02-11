# setStyle(target: string, style: string)
$.setStyle = (target, style) ->
  unless target then throw new Error '$.setStyle: target is required'
  unless style then throw new Error '$.setStyle: style is required'
  __target__ = "ahk_exe #{target}"
  `WinSet, Style, % style, % __target__`