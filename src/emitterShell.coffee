# @ts-check

import $each from './each'
import $filter from './filter'
import $noop from './noop'
import $split from './split'

class EmitterShell

  constructor: ->

    ###* @type import('./emitterShell').EmitterShell['bus'] ###
    @bus = []

    return @

  ###* @type import('./emitterShell').EmitterShell['emit'] ###
  emit: (key, args...) ->

    [$type, $name] = $split key, '.'
    unless $type then return

    # 这里有一个奇怪的待解决的编译器Bug
    # 如果代码直接写为`$it[0] == $type and $it[1] == $name`
    # 在编译器中会被错误编译为
    # `return emitterShell_it[1] == emitterShell_type && emitterShell_it[1] == emitterShell_name`
    # 第二个`emitterShell_it[1]`应该是`emitterShell_it[2]`
    # 这个Bug在编译器中会被修复（在未来的某一天）
    if $name then $list = $filter @bus, ($it) ->
      unless $it[0] == $type then return false
      unless $it[1] == $name then return false
      return true
    else $list = $filter @bus, ($it) -> $it[0] == $type

    $each $list, ($it) ->
      $it[2] args...
      if $it[3] == 'once' then $it[3] = 'expired'
      return

    @bus = $filter @bus, ($it) -> $it[3] != 'expired'
    return

  ###* @type import('./emitterShell').EmitterShell['off'] ###
  off: (key = '') ->

    [$type, $name] = $split key, '.'
    unless $type
      @bus = []
      return

    if $name then @bus = $filter @bus, ($it) ->
      !($it[0] == $type and $it[1] == $name)
    else @bus = $filter @bus, ($it) -> $it[0] != $type
    return

  ###* @type import('./emitterShell').EmitterShell['on'] ###
  on: (key, callback) ->
    [$type, $name] = $split key, '.'
    unless $type then throw new Error 'EmitterShell.on: key must be a string with type'
    @bus.Push [$type, $name, callback, 'always']
    return

  ###* @type import('./emitterShell').EmitterShell['once'] ###
  once: (key, callback) ->
    [$type, $name] = $split key, '.'
    unless $type then throw new Error 'EmitterShell.on: key must be a string with type'
    @bus.Push [$type, $name, callback, 'once']
    return

$noop EmitterShell