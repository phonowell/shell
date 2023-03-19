# @ts-check

import $delete from './delete'
import $filter from './filter'
import $forEach from './forEach'
import $formatHotkey from './formatHotkey'
import $isFunction from './isFunction'
import $isString from './isString'
import $length from './length'
import $noop from './noop'
import $press from './press'
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
  add: (args...) ->

    [$key, $name, $callback] = @pickArgs args

    @init $key
    $push @mapCallback[$key], [$name, $callback]
    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['fire'] ###
  fire: (key) ->

    [key, $name] = $split ($replace key, ':down', ''), '.'

    $list = @mapCallback[key]
    unless $length $list
      $press key
      return

    if $name then $list = $filter $list, (it) -> it[0] == $name
    $forEach $list, (it) -> it[1]()

  ###* @type import('../type/keyBindingShell').KeyBindingShell['init'] ###
  init: (key) ->

    if @mapCallback[key] then return
    @mapCallback[key] = []

    $fn = => @fire key
    @mapBound[key] = $fn
    @on key, $fn

  ###* @type import('../type/keyBindingShell').KeyBindingShell['isTuple3'] ###
  isTuple3: (ipt) ->
    unless ($length ipt) == 3 then return false
    unless $isString ipt[0] then return false
    unless $isString ipt[1] then return false
    unless $isFunction ipt[2] then return false
    return true

  ###* @type import('../type/keyBindingShell').KeyBindingShell['off'] ###
  off: (key, callback) ->
    key = $formatHotkey $replace key, ':down', ''
    $noop callback
    Native 'Hotkey, % key, % callback, Off'
    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['on'] ###
  on: (key, callback) ->
    key = $formatHotkey $replace key, ':down', ''
    $noop callback
    Native 'Hotkey, % key, % callback, On'
    return

  ###* @type import('../type/keyBindingShell').KeyBindingShell['pickArgs'] ###
  pickArgs: (args) ->
    if @isTuple3 args then return args
    return [args[0], {}, args[1]]

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