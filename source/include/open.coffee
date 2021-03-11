# open(source: string): void
$.open = (source) ->
  $validateType 'open', source, 'string'
  `Run, % source`