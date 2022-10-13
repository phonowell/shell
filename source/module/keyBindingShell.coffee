# @ts-check

import $filter from './filter'
import $forEach from './forEach'
import $formatHotkey from './formatHotkey'
import $length from './length'
import $noop from './noop'
import $push from './push'
import $replace from './replace'
import $split from './split'

class KeyBindingShell

  ###* @type {import('@/type/keyBindingShell').MapBound} ###
  mapBound: {} # Record<Key, Fn>
  ###* @type {import('@/type/keyBindingShell').MapCallback} ###
  mapCallback: {} # Record<Key, [Name, Fn]>

  # add(key: string, callback: Fn): void
  ###* @type {import('@/type/keyBindingShell').Add} ###
  add: (key, callback) ->
    [key, $name] = $split key, '.'
    @init key
    $push @mapCallback[key], [$name, callback]
    return

  # fire(key: string): void
  ###* @type {import('@/type/keyBindingShell').Fire} ###
  fire: (key) ->

    [key, $name] = $split ($replace key, ':down', ''), '.'

    $list = @mapCallback[key]
    if $name then $list = $filter $list, (it) -> it[0] == $name
    $forEach $list, (it) -> it[1]()

  # init(key: string): void
  ###* @type {import('@/type/keyBindingShell').Init} ###
  init: (key) ->

    if @mapCallback[key] then return
    @mapCallback[key] = []

    $fn = => @fire key
    @mapBound[key] = $fn
    @on key, $fn

  # off(key: string, callback: Fn): void
  ###* @type {import('@/type/keyBindingShell').Off} ###
  off: (key, callback) ->
    key = $formatHotkey $replace key, ':down', ''
    $noop callback
    Native 'Hotkey, % key, % callback, Off'
    return

  # on(key: string, callback: Fn): void
  ###* @type {import('@/type/keyBindingShell').On} ###
  on: (key, callback) ->
    key = $formatHotkey $replace key, ':down', ''
    $noop callback
    Native 'Hotkey, % key, % callback, On'
    return

  # remove(key: string): void
  ###* @type {import('@/type/keyBindingShell').Remove} ###
  remove: (key) ->

    [key, $name] = $split key, '.'

    unless $name
      @mapCallback[key] = undefined
      @off key, @mapBound[key]
      return

    $listNew = $filter @mapCallback[key], ($item) -> return $item[0] != $name

    unless $length $listNew
      @mapCallback[key] = undefined
      @off key, @mapBound[key]
      return

    @mapCallback[key] = $listNew
    return

$noop KeyBindingShell