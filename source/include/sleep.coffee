# sleep(time: number): void
$.sleep = (time) ->
  $validateType 'sleep', time, 'number'
  `Sleep, % time`