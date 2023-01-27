# @ts-check

import $delete from './delete'
import $filter from './filter'
import $forEach from './forEach'
import $formatHotkey from './formatHotkey'
import $length from './length'
import $noop from './noop'
import $push from './push'
import $replace from './replace'
import $split from './split'

class KeyBindingShell

  constructor: ->

    ###* @type import('../type/keyBindingShell').KeyBindingShell['mapBound'] ###
    @mapBound = {} # Record<string, Fn>
    ###* @type import('../type/keyBindingShell').KeyBindingShell['mapCallback'] ###
    @mapCallback = {} # Record<string, [Name, Fn]>

  # add(key: string, callback: Fn): void
  ###* @type import('../type/keyBindingShell').KeyBindingShell['add'] ###
  add: (key, callback) ->
    [key, $name] = $split key, '.'
    @init key
    $push @mapCallback[key], [$name, callback]
    return

  # fire(key: string): void
  ###* @type import('../type/keyBindingShell').KeyBindingShell['fire'] ###
  fire: (key) ->

    [key, $name] = $split ($replace key, ':down', ''), '.'

    $list = @mapCallback[key]
    if $name then $list = $filter $list, (it) -> it[0] == $name
    $forEach $list, (it) -> it[1]()

  # init(key: string): void
  ###* @type import('../type/keyBindingShell').KeyBindingShell['init'] ###
  init: (key) ->

    if @mapCallback[key] then return
    @mapCallback[key] = []

    $fn = => @fire key
    @mapBound[key] = $fn
    @on key, $fn

  # off(key: string, callback: Fn): void
  ###* @type import('../type/keyBindingShell').KeyBindingShell['off'] ###
  off: (key, callback) ->
    key = $formatHotkey $replace key, ':down', ''
    $noop callback
    Native 'Hotkey, % key, % callback, Off'
    return

  # on(key: string, callback: Fn): void
  ###* @type import('../type/keyBindingShell').KeyBindingShell['on'] ###
  on: (key, callback) ->
    key = $formatHotkey $replace key, ':down', ''
    $noop callback
    Native 'Hotkey, % key, % callback, On'
    return

  # remove(key: string): void
  ###* @type import('../type/keyBindingShell').KeyBindingShell['remove'] ###
  remove: (key) ->

    [key, $name] = $split key, '.'

    unless $name
      $delete @mapCallback, key
      @off key, @mapBound[key]
      return

    $listNew = $filter @mapCallback[key], ($item) -> $item[0] != $name

    unless $length $listNew
      $delete @mapCallback, key
      @off key, @mapBound[key]
      return

    @mapCallback[key] = $listNew
    return

$noop KeyBindingShell