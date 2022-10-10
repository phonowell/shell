# @ts-check

import exit from './exit'

###* admin(): void
# @returns {void}
###
export default ->
  if A_IsAdmin then return
  Native 'Run *RunAs "%A_ScriptFullPath%"'
  exit()