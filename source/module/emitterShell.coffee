# @ts-check

import $each from './each'
import $filter from './filter'
import $noop from './noop'
import $push from './push'
import $split from './split'

class EmitterShell

  constructor: ->
    ###* @type import('../type/emitterShell').EmitterShell['bus'] ###
    @bus = []

  # emit(key: string, ...args: unknown[]): void
  ###* @type import('../type/emitterShell').EmitterShell['emit'] ###
  emit: (key, args...) ->

    [$type, $name] = $split key, '.'

    unless $type then return

    if $name then $list = $filter @bus, ($it) ->
      $it[0] == $type and $it[1] == $name
    else $list = $filter @bus, ($it) -> $it[0] == $type

    $each $list, ($it) ->
      $it[2] args...
      if $it[3] == 'once' then $it[3] = 'expired'
      return

    @bus = $filter @bus, ($it) -> $it[3] != 'expired'
    return

  # off(key: string): void
  ###* @type import('../type/emitterShell').EmitterShell['off'] ###
  off: (key) ->

    [$type, $name] = $split key, '.'

    unless $type
      @bus = []
      return

    if $name then @bus = $filter @bus, ($it) ->
      !($it[0] == $type and $it[1] == $name)
    else @bus = $filter @bus, ($it) -> $it[0] != $type
    return

  # on(key: string, callback: Fn): void
  ###* @type import('../type/emitterShell').EmitterShell['on'] ###
  on: (key, callback) ->
    [$type, $name] = $split key, '.'
    $push @bus, [$type, $name, callback, 'always']
    return

  # once(key: string, callback: Fn): void
  ###* @type import('../type/emitterShell').EmitterShell['once'] ###
  once: (key, callback) ->
    [$type, $name] = $split key, '.'
    $push @bus, [$type, $name, callback, 'once']
    return

$noop EmitterShell