# formatHotkey(key: string): string
$.formatHotkey = (key) ->

  # format
  __listkey__ = []
  __key__ = $.toLowerCase key
  __key__ = $.replace __key__, ' ', ''
  __key__ = $.replace __key__, '-', ''
  _list = $.split __key__, '+'
  for it in _list
    __listkey__.Push it

  # unfold
  __isAlt__ = false
  __isCtrl__ = false
  __isShift__ = false
  __isWin__ = false
  __listResult__ = []
  for key in __listkey__
    if key == 'alt'
      __isAlt__ = true
      continue
    if key == 'ctrl'
      __isCtrl__ = true
      continue
    if key == 'shift'
      __isShift__ = true
      continue
    if key == 'win'
      __isWin__ = true
      continue
    __listResult__.Push key

  __prefix__ = ''
  if __isAlt__ then __prefix__ = "#{__prefix__}!"
  if __isCtrl__ then __prefix__ = "#{__prefix__}^"
  if __isShift__ then __prefix__ = "#{__prefix__}+"
  if __isWin__ then __prefix__ = "#{__prefix__}#"

  __result__ = ''
  for it in __listResult__
    __result__ = "#{__result__} & #{it}"
  return $.replace "#{__prefix__}#{$.trim __result__, ' &'}", ':', ' '