# sleep(time: number): void
$.sleep = (time) ->
  unless time > 0 then throw new Error '$.sleep: time is required'
  `Sleep, % time`