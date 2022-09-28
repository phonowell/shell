### interface
type Item = [string, string, Fn, number]
###

class EmitterShell

  bus: [] # Item[]

  # emit(key: string, ...args: unknown[]): void
  emit: (key, args...) ->

    [$type, $name] = $.split key, '.'

    unless $type then return

    if $name then $list = $.filter @bus, ($it) ->
      return $it[0] == $type and $it[1] == $name
    else $list = $.filter @bus, ($it) -> return $it[0] == $type

    $.forEach $list, ($it) ->
      $it[2] args...
      if $it[3] == 1 then $it[3] = 2

    @bus = $.filter @bus, ($it) -> return $it[3] != 2

  # off(key: string): void
  off: (key) ->

    [$type, $name] = $.split key, '.'

    unless $type
      @bus = []
      return

    if $name then @bus = $.filter @bus, ($it) ->
      return !($it[0] == $type and $it[1] == $name)
    else @bus = $.filter @bus, ($it) ->
      return $it[0] != $type

  # on(key: string, callback: Fn): void
  on: (key, callback) ->
    [$type, $name] = $.split key, '.'
    $.push @bus, [$type, $name, callback, 0]

  # once(key: string, callback: Fn): void
  once: (key, callback) ->
    [$type, $name] = $.split key, '.'
    $.push @bus, [$type, $name, callback, 1]

# $.emitter(): EmitterShell
$.emitter = -> return new EmitterShell()