class EmitterShell

  bus: []

  emit: (key, args...) ->

    [$type, $name] = $.split key, '.'

    unless $type then return

    if $name then $list = $.filter @bus, ($it) ->
      return $it[0] == $type and $it[1] == $name
    else $list = $.filter @bus, ($it) ->
      return $it[0] == $type

    $.map $list, ($it) -> $it[2] args...

  off: (key) ->

    [$type, $name] = $.split key, '.'

    unless $type
      @bus = []
      return

    if $name then @bus = $.filter @bus, ($it) ->
      return !($it[0] == $type and $it[1] == $name)
    else @bus = $.filter @bus, ($it) ->
      return $it[0] != $type

  on: (key, callback) ->
    [$type, $name] = $.split key, '.'
    $.push @bus, [$type, $name, callback]

$.emitter = -> return new EmitterShell