# open(source: string): void
$.open = (source) ->
  $vt 'open', source, 'string'
  `Run, % source`