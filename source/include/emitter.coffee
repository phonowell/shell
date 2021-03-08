class EmitterShellX

  bus: []

  emit: (key, args...) ->

    [__type__, __name__] = $.split key, '.'

    unless __type__
      return @

    unless __name__
      for __item__ in @bus
        unless __item__[0] == __type__
          continue
        __item__[2] args...
      return @

    for __item__ in @bus
      unless __item__[0] == __type__ and __item__[1] == __name__
        continue
      __item__[2] args...
    return @

  off: (key) ->

    [__type__, __name__] = $.split key, '.'

    unless __type__
      @bus = []
      return @

    unless __name__
      __busNew__ = []
      for __item__ in @bus
        if __item__[0] == __type__
          continue
        $.push __busNew__, __item__
      @bus = __busNew__
      return @

    __busNew__ = []
    for __item__ in @bus
      if __item__[0] == __type__ and __item__[1] == __name__
        continue
      $.push __busNew__, __item__
    @bus = __busNew__
    return @

  on: (key, callback) ->
    [__type__, __name__] = $.split key, '.'
    $.push @bus, [__type__, __name__, callback]
    return @

$.emitter = -> return new EmitterShellX