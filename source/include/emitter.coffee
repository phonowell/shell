class EmitterShellX

  bus: []

  emit: (key, args...) ->

    $validateType 'emitter.emit', key, 'string'

    [$type, $name] = $.split key, '.'

    unless $type
      return @

    unless $name
      for $item in @bus
        unless $item[0] == $type
          continue
        $item[2] args...
      return @

    for $item in @bus
      unless $item[0] == $type and $item[1] == $name
        continue
      $item[2] args...
    return @

  off: (key) ->

    $validateType 'emitter.off', key, 'string'

    [$type, $name] = $.split key, '.'

    unless $type
      @bus = []
      return @

    unless $name
      $busNew = []
      for $item in @bus
        if $item[0] == $type
          continue
        $.push $busNew, $item
      @bus = $busNew
      return @

    $busNew = []
    for $item in @bus
      if $item[0] == $type and $item[1] == $name
        continue
      $.push $busNew, $item
    @bus = $busNew
    return @

  on: (key, callback) ->

    $validateType 'emitter.on', key, 'string'
    $validateType 'emitter.key', callback, 'function'

    [$type, $name] = $.split key, '.'
    
    $.push @bus, [$type, $name, callback]
    return @

$.emitter = -> return new EmitterShellX