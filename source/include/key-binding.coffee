class KeyBindingShellX

  mapBound: {}
  mapCallback: {}

  add: (key, callback) ->
    [key, $name] = $.split key, '.'
    @init key
    $.push @mapCallback[key], [$name, callback]
    return $

  fire: (key) ->

    [key, $name] = $.split ($.replace key, ':down', ''), '.'

    unless $name
      for $item in @mapCallback[key]
        $item[1]()
      return $

    for $item in @mapCallback[key]
      unless $item[0] == $name
        continue
      $item[1]()

    return $

  init: (key) ->

    if @mapCallback[key]
      return $
    @mapCallback[key] = []

    $fn = => @fire key
    @mapBound[key] = $fn
    @on key, $fn

  off: (key, callback) ->
    key = $.formatHotkey key
    `Hotkey, % key, % callback, Off`
    return $

  on: (key, callback) ->
    key = $.formatHotkey key
    `Hotkey, % key, % callback, On`
    return $

  remove: (key) ->

    [key, $name] = $.split key, '.'

    unless $name
      @mapCallback[key] = ''
      @off key, @mapBound[key]
      return $

    $listNew = []
    for $item in @mapCallback[key]
      if $item[0] == $name
        continue
      $.push $listNew, $item

    unless $.length $listNew
      @mapCallback[key] = ''
      @off key, @mapBound[key]
      return $

    @mapCallback[key] = $listNew
    return $

keyBindingShell = new KeyBindingShellX()

$.off = keyBindingShell.remove
$.on = keyBindingShell.add
$.trigger = keyBindingShell.fire