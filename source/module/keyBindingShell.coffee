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

    ###* @type import('../type/keyBindingShell').KeyBindingShell['mapPrevented'] ###
    @mapPrevented = {}

  ###* @type import('../type/keyBindingShell').KeyBindingShell['add'] ###
  add: (keyMixed, callback) ->

    [$key, $name] = $split ($replace keyMixed, ':down', ''), '.'

    @register $key

    # Item: [Name, Fn]
    $push @mapCallback[$key], [$name, callback]
    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['fire'] ###
  fire: (keyMixed) -> $forEach (@getListItem keyMixed), (it) -> it[1]()

  ###* @type import('../type/keyBindingShell').KeyBindingShell['formatKey'] ###
  formatKey: (key, prefix = '') ->
    $key = $formatHotkey $replace key, ':down', ''
    unless prefix then return $key
    return "#{prefix}#{$key}"

  ###* @type import('../type/keyBindingShell').KeyBindingShell['getListItem'] ###
  getListItem: (keyMixed) ->

    [$key, $name] = $split ($replace keyMixed, ':down', ''), '.'

    $list = @mapCallback[$key]
    if $name then $list = $filter $list, (it) -> it[0] == $name

    return $list

  ###* @type import('../type/keyBindingShell').KeyBindingShell['isPrevented'] ###
  isPrevented: (key) -> @mapPrevented[key] == true

  ###* @type import('../type/keyBindingShell').KeyBindingShell['prepare'] ###
  prepare: (key) ->

    if @mapCallback[key] then return

    @mapBound[key] = => @fire key
    @mapCallback[key] = []
    @mapPrevented[key] = false
    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['prevent'] ###
  prevent: (key, isPrevented) ->

    @prepare key
    @mapPrevented[key] = isPrevented

    $callback = @mapBound[key]

    $key = @formatKey key, '~'
    if isPrevented then $key = @formatKey key

    $noop $callback, $key

    Native 'Hotkey, % $key, % $callback, On'
    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['register'] ###
  register: (key) ->

    @prepare key

    $callback = @mapBound[key]

    $key = @formatKey key, '~'
    if @mapPrevented[key] then $key = @formatKey key

    $noop $callback, $key

    Native 'Hotkey, % $key, % $callback, On'
    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['remove'] ###
  remove: (keyMixed) ->

    [$key, $name] = $split ($replace keyMixed, ':down', ''), '.'

    unless $name
      @mapCallback[$key] = []
      return

    $listNew = $filter @mapCallback[$key], ($item) -> $item[0] != $name
    @mapCallback[$key] = $listNew
    return

$noop KeyBindingShell
