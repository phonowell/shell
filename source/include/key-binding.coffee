class KeyBindingShellX

  mapBound: {}
  mapCallback: {}

  add: (key, callback) ->

    $vt 'keyBinding.add', key, 'string', 'number'
    $vt 'keyBinding.add', callback, 'function'

    [key, $name] = $.split key, '.'
    @init key
    $.push @mapCallback[key], [$name, callback]
    return $

  fire: (key) ->

    $vt 'keyBinding.fire', key, 'string', 'number'

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

    $vt 'keyBinding.init', key, 'string', 'number'

    if @mapCallback[key]
      return $
    @mapCallback[key] = []

    $fn = => @fire key
    @mapBound[key] = $fn
    @on key, $fn

  off: (key, callback) ->

    $vt 'keyBinding.off', key, 'string', 'number'
    $vt 'keyBinding.off', key, callback, 'function'

    key = $.formatHotkey key
    `Hotkey, % key, % callback, Off`
    return $

  on: (key, callback) ->

    $vt 'keyBinding.on', key, 'string', 'number'
    $vt 'keyBinding.on', callback, 'function'

    key = $.formatHotkey key
    `Hotkey, % key, % callback, On`
    return $

  remove: (key) ->

    $vt 'keyBinding.remove', key, 'string', 'number'

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