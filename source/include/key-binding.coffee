class KeyBindingShellX

  mapBound: {}
  mapCallback: {}

  add: (key, callback) ->
    [key, __name__] = $.split key, '.'
    @init key
    $.push @mapCallback[key], [__name__, callback]
    return $

  fire: (key) ->

    [key, __name__] = $.split ($.replace key, ':down', ''), '.'

    unless __name__
      for __item__ in @mapCallback[key]
        __item__[1]()
      return $

    for __item__ in @mapCallback[key]
      unless __item__[0] == __name__
        continue
      __item__[1]()

    return $

  init: (key) ->

    if @mapCallback[key]
      return $
    @mapCallback[key] = []

    __fn__ = => @fire key
    @mapBound[key] = __fn__
    @on key, __fn__

  off: (key, callback) ->
    key = $.formatHotkey key
    `Hotkey, % key, % callback, Off`
    return $

  on: (key, callback) ->
    key = $.formatHotkey key
    `Hotkey, % key, % callback, On`
    return $

  remove: (key) ->

    [key, __name__] = $.split key, '.'

    unless __name__
      @mapCallback[key] = ''
      @off key, @mapBound[key]
      return $

    __listNew__ = []
    for __item__ in @mapCallback[key]
      if __item__[0] == __name__
        continue
      $.push __listNew__, __item__

    unless $.length __listNew__
      @mapCallback[key] = ''
      @off key, @mapBound[key]
      return $

    @mapCallback[key] = __listNew__
    return $

keyBindingShell = new KeyBindingShellX()

$.off = keyBindingShell.remove
$.on = keyBindingShell.add
$.trigger = keyBindingShell.fire