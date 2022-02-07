# wait(process: string, callback: function): void
$.wait = (process, callback) ->
  `WinWait, % process`
  unless ($.type callback) == 'function' then return
  callback()