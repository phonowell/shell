# play(filename: string): void
$.play = (filename) ->
  $vt 'play', filename, 'string'
  `SoundPlay, % filename`