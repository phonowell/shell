# play(filename: string): void
$.play = (filename) ->
  $validateType 'play', filename, 'string'
  `SoundPlay, % filename`