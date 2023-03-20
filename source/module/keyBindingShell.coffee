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

    [$key, $name] = $split key, '.'

    # init
    unless @mapCallback[$key]
      @mapCallback[$key] = []

      $fn = => @fire key
      @mapBound[$key] = $fn
      @register $key, $fn, on

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

  ###* @type import('../type/keyBindingShell').KeyBindingShell['prevent'] ###
  prevent: (key, isPrevented) ->

    $key = @formatKey key
    $noop $key

    if isPrevented
      Native 'Hotkey, % $key, % $noop, On'
    else
      Native 'Hotkey, % $key, % $noop, Off'

    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['register'] ###
  register: (key, callback, action) ->

    $key = @formatKey key, '~'
    $noop $key, callback

    if action
      Native 'Hotkey, % $key, % callback, On'
    else
      Native 'Hotkey, % $key, % callback, Off'

    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['remove'] ###
  remove: (key) ->

    [$key, $name] = $split key, '.'

    unless $name
      @mapCallback[$key] = []
      return

    $listNew = $filter @mapCallback[$key], ($item) -> $item[0] != $name
    @mapCallback[$key] = $listNew
    return

$noop KeyBindingShell
