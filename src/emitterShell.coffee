# @ts-check

import $each from './each'
import $filter from './filter'
import $noop from './noop'
import $split from './split'

class EmitterShell

  constructor: ->

    ###* @type import('./emitterShell').EmitterShell['bus'] ###
    @bus = []

  ###* @type import('./emitterShell').EmitterShell['emit'] ###
  emit: (key, args...) ->

    [$type, $name] = $split key, '.'
    unless $type then return

    if $name then $list = $filter @bus, (it) -> it[0] == $type and it[1] == $name
    else $list = $filter @bus, (it) -> it[0] == $type

    $each $list, (it) ->
      it[2] args...
      if it[3] == 'once' then it[3] = 'expired'
      return

    @bus = $filter @bus, (it) -> it[3] != 'expired'
    return

  ###* @type import('./emitterShell').EmitterShell['off'] ###
  off: (key = '') ->

    [$type, $name] = $split key, '.'
    unless $type
      @bus = []
      return

    if $name then @bus = $filter @bus, (it) ->
      !(it[0] == $type and it[1] == $name)
    else @bus = $filter @bus, (it) -> it[0] != $type
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
    unless $type then throw new Error 'EmitterShell.once: key must be a string with type'
    @bus.Push [$type, $name, callback, 'once']
    return

$noop EmitterShell