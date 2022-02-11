# wait(target: string, callback: function): void
$.wait = (target, callback) ->

  unless target then throw new Error '$.wait: target is required'
  unless callback then throw new Error '$.wait: callback is required'

  __target__ = "ahk_exe #{target}"
  `WinWait, % __target__`
  unless ($.type callback) == 'function' then return
  callback()