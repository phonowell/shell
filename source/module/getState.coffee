# @ts-check

import $formatHotkey from './formatHotkey'

# getState(key: string): string
###* @type {import('../type/module').GetState} *###
export default (key) ->
  key = $formatHotkey key
  return GetKeyState key, 'P'