# getState(key: string): string
$.getState = (key) ->
  key = $.formatHotkey key
  return GetKeyState key, 'P'