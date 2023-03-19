# @ts-check

import $delete from './delete'
import $filter from './filter'
import $forEach from './forEach'
import $formatHotkey from './formatHotkey'
import $length from './length'
import $noop from './noop'
import $press from './press'
import $push from './push'
import $replace from './replace'
import $split from './split'

class KeyBindingShell

  constructor: ->

    ###* @type import('../type/keyBindingShell').KeyBindingShell['mapCallback'] ###
    @mapCallback = {}

  ###* @type import('../type/keyBindingShell').KeyBindingShell['add'] ###
  add: (key, callback) ->

    [$key, $name] = $split key, '.'

    unless @mapCallback[$key] then @mapCallback[$key] = []

    $push @mapCallback[$key], [$name, callback]
    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['fire'] ###
  fire: (key) ->

    [$key, $name] = $split ($replace key, ':down', ''), '.'

    $list = @mapCallback[$key]
    unless $length $list
      # ensure the key can be triggered as itself
      # when there is no callback bound to it
      $press $key
      return

    if $name then $list = $filter $list, (it) -> it[0] == $name
    $forEach $list, (it) -> it[1]()

  ###* @type import('../type/keyBindingShell').KeyBindingShell['formatKey'] ###
  formatKey: (key, prefix = '') ->
    $key = $formatHotkey $replace key, ':down', ''
    unless prefix then return $key
    return "#{prefix}#{$key}"

  ###* @type import('../type/keyBindingShell').KeyBindingShell['off'] ###
  off: (key, callback) ->
    $key = @formatKey key, '~'
    $noop $key, callback
    Native 'Hotkey, % $key, % callback, Off'
    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['on'] ###
  on: (key, callback) ->
    $key = @formatKey key, '~'
    $noop $key, callback
    Native 'Hotkey, % $key, % callback, On'
    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['permit'] ###
  permit: (key) ->
    $key = @formatKey key
    $noop $key
    Native 'Hotkey, % $key, % $noop, Off'
    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['prevent'] ###
  prevent: (key) ->
    $key = @formatKey key
    $noop $key
    Native 'Hotkey, % $key, % $noop, On'
    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['remove'] ###
  remove: (key) ->

    [$key, $name] = $split key, '.'

    unless $name
      $delete @mapCallback, $key
      return

    $listNew = $filter @mapCallback[$key], ($item) -> $item[0] != $name

    unless $length $listNew
      $delete @mapCallback, $key
      return

    @mapCallback[$key] = $listNew
    return

$noop KeyBindingShell