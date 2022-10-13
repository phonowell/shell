# @ts-check

import $exit from './exit'

# admin(): void
###* @type {import('../type/module').Admin} ###
export default ->
  if A_IsAdmin then return
  Native 'Run *RunAs "%A_ScriptFullPath%"'
  $exit()