# wait(target: string, callback: function): void
$.wait = (target, callback) ->
  __target__ = "ahk_exe #{target}"
  `WinWait, % __target__`
  unless ($.type callback) == 'function' then return
  callback()