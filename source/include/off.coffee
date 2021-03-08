# off(key: string, callback: Function): void
$.off = (key, callback) ->
  key = $.formatHotkey key
  `Hotkey, % key, % callback, Off`