# sleep(time: number): void
$.sleep = (time) ->
  $vt 'sleep', time, 'number'
  `Sleep, % time`