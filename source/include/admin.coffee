# @ts-check
# admin(): void
$.admin = ->
  if A_IsAdmin then return
  `Run *RunAs "%A_ScriptFullPath%"`
  $.exit()