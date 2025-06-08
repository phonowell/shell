# @ts-check

import $filter from './filter'
import $forEach from './forEach'
import $formatHotkey from './formatHotkey'
import $isFunction from './isFunction'
import $noop from './noop'
import $replace from './replace'
import $split from './split'

class KeyBindingShell

  constructor: ->

    ###* @type import('./keyBindingShell').KeyBindingShell['mapBound'] ###
    @mapBound = {}

    ###* @type import('./keyBindingShell').KeyBindingShell['mapCallback'] ###
    @mapCallback = {}

    ###* @type import('./keyBindingShell').KeyBindingShell['mapPrevented'] ###
    @mapPrevented = {}

    return @

  ###* @type import('./keyBindingShell').KeyBindingShell['add'] ###
  add: (keyMixed, callback) ->

    unless $isFunction callback
      throw new Error "KeyBindingShell.add: Callback is not a function for key: #{keyMixed}"

    [$key, $name] = $split ($replace keyMixed, ':down', ''), '.'
    unless $name then $name = ''

    @register $key

    # Item: [Name, Function]
    @mapCallback[$key].Push [$name, callback]
    return

  ###* @type import('./keyBindingShell').KeyBindingShell['fire'] ###
  fire: (keyMixed) ->
    $forEach (@getListItem keyMixed), (it) ->
      # 此处存在一个编译器Bug
      # 首个it[1]的下标在处理时会出现-1偏移
      # 未来将会在编译器中修复
      $noop it[1]
      unless $isFunction it[1]
        throw new Error "KeyBindingShell.fire: Callback is not a function for key: #{keyMixed}"
      it[1]()
      return
    return

  ###* @type import('./keyBindingShell').KeyBindingShell['formatKey'] ###
  formatKey: (key, prefix = '') ->
    $key = $formatHotkey $replace key, ':down', ''
    unless prefix then return $key
    return "#{prefix}#{$key}"

  ###* @type import('./keyBindingShell').KeyBindingShell['getListItem'] ###
  getListItem: (keyMixed) ->

    [$key, $name] = $split ($replace keyMixed, ':down', ''), '.'

    $list = @mapCallback[$key]
    unless $list then return []

    if $name then $list = $filter $list, (it) -> it[0] == $name
    return $list

  ###* @type import('./keyBindingShell').KeyBindingShell['isPrevented'] ###
  isPrevented: (key) -> @mapPrevented[key] == true

  ###* @type import('./keyBindingShell').KeyBindingShell['prepare'] ###
  prepare: (key) ->

    if @mapCallback[key] then return

    @mapBound[key] = => @fire key
    @mapCallback[key] = []
    @mapPrevented[key] = false
    return

  ###* @type import('./keyBindingShell').KeyBindingShell['prevent'] ###
  prevent: (key, isPrevented) ->

    @prepare key
    @mapPrevented[key] = isPrevented

    $callback = @mapBound[key]

    $key = @formatKey key, '~'
    if isPrevented then $key = @formatKey key

    $noop $callback, $key

    Native 'Hotkey, % $key, % $callback, On'
    return

  ###* @type import('./keyBindingShell').KeyBindingShell['register'] ###
  register: (key) ->

    @prepare key

    $callback = @mapBound[key]

    $key = @formatKey key, '~'
    if @mapPrevented[key] then $key = @formatKey key

    $noop $callback, $key

    Native 'Hotkey, % $key, % $callback, On'
    return

  ###* @type import('./keyBindingShell').KeyBindingShell['remove'] ###
  remove: (keyMixed) ->

    [$key, $name] = $split ($replace keyMixed, ':down', ''), '.'

    unless $name
      @mapCallback[$key] = []
      return

    $listNew = $filter @mapCallback[$key], (it) -> it[0] != $name
    @mapCallback[$key] = $listNew
    return

$noop KeyBindingShell
