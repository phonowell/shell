# @ts-check

import $filter from './filter'
import $forEach from './forEach'
import $formatHotkey from './formatHotkey'
import $noop from './noop'
import $push from './push'
import $replace from './replace'
import $split from './split'

class KeyBindingShell

  constructor: ->

    ###* @type import('../type/keyBindingShell').KeyBindingShell['mapBound'] ###
    @mapBound = {}
    ###* @type import('../type/keyBindingShell').KeyBindingShell['mapCallback'] ###
    @mapCallback = {}

  ###* @type import('../type/keyBindingShell').KeyBindingShell['add'] ###
  add: (key, callback) ->

    [$key, $name] = $split ($replace key, ':down', ''), '.'

    @register $key, on

    # Item: [Name, Fn]
    $push @mapCallback[$key], [$name, callback]
    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['fire'] ###
  fire: (key) ->

    [$key, $name] = $split ($replace key, ':down', ''), '.'

    $list = @mapCallback[$key]
    if $name then $list = $filter $list, (it) -> it[0] == $name

    $forEach $list, (it) -> it[1]()

  ###* @type import('../type/keyBindingShell').KeyBindingShell['formatKey'] ###
  formatKey: (key, prefix = '') ->
    $key = $formatHotkey $replace key, ':down', ''
    unless prefix then return $key
    return "#{prefix}#{$key}"

  ###* @type import('../type/keyBindingShell').KeyBindingShell['prepare'] ###
  prepare: (key) ->

    if @mapCallback[key] then return

    @mapBound[key] = => @fire key
    @mapCallback[key] = []
    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['prevent'] ###
  prevent: (key, isPrevented) ->

    @prepare key

    $callback = @mapBound[key]
    $key = @formatKey key
    $noop $callback, $key

    if isPrevented
      Native 'Hotkey, % $key, % $callback, On'
    else
      Native 'Hotkey, % $key, % $callback, Off'

    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['register'] ###
  register: (key, action) ->

    @prepare key

    $callback = @mapBound[key]
    $key = @formatKey key, '~'
    $noop $callback, $key

    if action
      Native 'Hotkey, % $key, % $callback, On'
    else
      Native 'Hotkey, % $key, % $callback, Off'

    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['remove'] ###
  remove: (key) ->

    [$key, $name] = $split ($replace key, ':down', ''), '.'

    unless $name
      @mapCallback[$key] = []
      return

    $listNew = $filter @mapCallback[$key], ($item) -> $item[0] != $name
    @mapCallback[$key] = $listNew
    return

$noop KeyBindingShell
