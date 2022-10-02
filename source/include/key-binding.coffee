# @ts-check
### interface
type Fn = () => unknown
type Key = string
type Name = string
###

class KeyBindingShellX

  mapBound: {} # Record<Key, Fn>
  mapCallback: {} # Record<Key, [Name, Fn]>

  # add(key: string, callback: Fn): void
  add: (key, callback) ->
    [key, $name] = $.split key, '.'
    @init key
    $.push @mapCallback[key], [$name, callback]

  # fire(key: string): void
  fire: (key) ->

    [key, $name] = $.split ($.replace key, ':down', ''), '.'

    $list = @mapCallback[key]
    if $name then $list = $.filter $list, (it) -> return it[0] == $name
    $.forEach $list, (it) -> it[1]()

  # init(key: string): void
  init: (key) ->

    if @mapCallback[key] then return
    @mapCallback[key] = []

    $fn = => @fire key
    @mapBound[key] = $fn
    @on key, $fn

  # off(key: string, callback: Fn): void
  off: (key, callback) ->
    key = $.formatHotkey $.replace key, ':down', ''
    `Hotkey, % key, % callback, Off`

  # on(key: string, callback: Fn): void
  on: (key, callback) ->
    key = $.formatHotkey $.replace key, ':down', ''
    `Hotkey, % key, % callback, On`

  # remove(key: string): void
  remove: (key) ->

    [key, $name] = $.split key, '.'

    unless $name
      @mapCallback[key] = ''
      @off key, @mapBound[key]
      return

    $listNew = $.filter @mapCallback[key], ($item) -> return $item[0] != $name

    unless $.length $listNew
      @mapCallback[key] = ''
      @off key, @mapBound[key]
      return

    @mapCallback[key] = $listNew

# execute
keyBindingShell = new KeyBindingShellX()

# alias
$.off = keyBindingShell.remove
$.on = keyBindingShell.add
$.trigger = keyBindingShell.fire