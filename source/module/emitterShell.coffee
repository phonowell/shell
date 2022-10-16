# @ts-check

import $each from './each'
import $filter from './filter'
import $noop from './noop'
import $push from './push'
import $split from './split'

class EmitterShell

  constructor: ->
    ###* @type {import('../type/emitterShell').Bus} ###
    @bus = []

  # emit(key: string, ...args: unknown[]): void
  ###* @type {import('../type/emitterShell').Emit} ###
  emit: (key, args...) ->

    [$type, $name] = $split key, '.'

    unless $type then return

    if $name then $list = $filter @bus, ($it) ->
      $it[0] == $type and $it[1] == $name
    else $list = $filter @bus, ($it) -> $it[0] == $type

    $each $list, ($it) ->
      $it[2] args...
      if $it[3] == 1 then $it[3] = 2
      return

    @bus = $filter @bus, ($it) -> $it[3] != 2
    return

  # off(key: string): void
  ###* @type {import('../type/emitterShell').Off} ###
  off: (key) ->

    [$type, $name] = $split key, '.'

    unless $type
      ###* @type {import('../type/emitterShell').Bus} ###
      @bus = []
      return

    if $name then @bus = $filter @bus, ($it) ->
      !($it[0] == $type and $it[1] == $name)
    else @bus = $filter @bus, ($it) -> $it[0] != $type
    return

  # on(key: string, callback: Fn): void
  ###* @type {import('../type/emitterShell').On} ###
  on: (key, callback) ->
    [$type, $name] = $split key, '.'
    $push @bus, [$type, $name, callback, 0]
    return

  # once(key: string, callback: Fn): void
  ###* @type {import('../type/emitterShell').Once} ###
  once: (key, callback) ->
    [$type, $name] = $split key, '.'
    $push @bus, [$type, $name, callback, 1]
    return

$noop EmitterShell