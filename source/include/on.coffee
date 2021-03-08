# on(key, string, callback: Function): void
$.on = (key, callback) ->
  key = "$#{$.formatHotkey key}"
  `Hotkey, % key, % callback, On`